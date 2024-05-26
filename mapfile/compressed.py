"""
Utilities for dealing with compressed war3 files (.w3v, .w3z, .w3g)
"""

from typing import *
from dataclasses import dataclass
import zlib
import struct

from mapfile.binary import ENDIANNESS

@dataclass
class War3Metadata:
    # Note(mm): File signature always equals "Warcraft III recorded game\x1A\0"
    is_expansion: bool
    version_number: int
    build_id: int
    flags: int
    replay_length_ms: int
    # testing:
    block_checksum: int
    compressed_data: bytes
    header_bytes: bytes


# Note(mm): Endianness spins these identifiers around, reversing bytes gives WAR3 and W3XP
expansion_identifier = (b'3RAW', b'PX3W',)

def decompress_war3_file(raw_contents: bytes) -> Tuple[War3Metadata, bytes]:
    # | 28..32 | uint header size (should be 0x40 for 1.07+)
    header_size = int.from_bytes(raw_contents[28:32], ENDIANNESS, signed=False)
    assert header_size == 0x44, 'Unexpected header size; file may be corrupted'
    uncompressed_size = int.from_bytes(raw_contents[40:44], ENDIANNESS, signed=False)
    num_blocks = int.from_bytes(raw_contents[44:48], ENDIANNESS, signed=False)
    expansion_id = raw_contents[48:52]
    assert expansion_id in expansion_identifier, 'Unknown expansion identifier'
    if expansion_id == expansion_identifier[0]:
        is_expansion = False
    else:
        is_expansion = True
    version_number = int.from_bytes(raw_contents[52:56], ENDIANNESS, signed=False)
    build_id = int.from_bytes(raw_contents[56:58], ENDIANNESS, signed=False)
    # | 58..60 | uint16 flags (0x0000 for single-player, 0x8000 for multi-player)
    flags = int.from_bytes(raw_contents[58:60], ENDIANNESS, signed=False)
    assert flags in (0, 0x8000,), 'Unknown flags'
    replay_length = int.from_bytes(raw_contents[60:64], ENDIANNESS, signed=False)
    crc32 = int.from_bytes(raw_contents[64:68], ENDIANNESS, signed=False)

    block_start = header_size
    data = b''
    BLOCK_HEADER_SIZE = 8  # u16 size, u16 original_size, u32 crc
    for block_index in range(num_blocks):
        data_bytes = raw_contents[block_start:]
        block_size = int.from_bytes(data_bytes[0:2], ENDIANNESS, signed=False)
        original_block_size = int.from_bytes(data_bytes[2:4], ENDIANNESS, signed=False)
        block_checksum = int.from_bytes(data_bytes[4:8], ENDIANNESS, signed=False)
        header_bytes = raw_contents[block_start:block_start+8]
        this_data_bytes = data_bytes[BLOCK_HEADER_SIZE:BLOCK_HEADER_SIZE+block_size]
        decompressor = zlib.decompressobj(-zlib.MAX_WBITS)
        data += decompressor.decompress(this_data_bytes[2:])
        block_start += BLOCK_HEADER_SIZE + block_size
    return (
        War3Metadata(is_expansion, version_number, build_id, flags, replay_length, block_checksum, data_bytes[8:], header_bytes),
        data[:uncompressed_size],
    )

def compress_war3_file(metadata: War3Metadata, data: bytes) -> bytes:
    HEADER_LENGTH = 0x44
    BLOCK_HEADER_LENGTH = 0x8
    compressor = zlib.compressobj(1)
    padded_data = data + (b'\0' * (0x800 - (len(data) % 0x800)))
    compressed_data = compressor.compress(padded_data)
    compressed_data += compressor.flush(zlib.Z_SYNC_FLUSH)
    file_size = len(compressed_data) + HEADER_LENGTH + BLOCK_HEADER_LENGTH

    result = b'Warcraft III recorded game\x1a\x00'
    result += struct.pack('<I', HEADER_LENGTH)
    result += struct.pack('<I', file_size)  # goal 0x91
    result += struct.pack('<I', 1)  # header_version
    result += struct.pack('<I', len(data))
    result += struct.pack('<I', 1)  # num_blocks
    result += expansion_identifier[metadata.is_expansion]
    result += struct.pack('<I', metadata.version_number)
    result += struct.pack('<H', metadata.build_id)
    result += struct.pack('<H', metadata.flags)
    result += struct.pack('<I', metadata.replay_length_ms)
    result += struct.pack('<I', zlib.crc32(result + b'\0\0\0\0'))  # crc
    # assume one block for now

    block = b''
    block += struct.pack('<H', len(compressed_data))
    block += struct.pack('<H', len(padded_data))
    # Phaneros: expect 0e 6c a2 58 = 0x58a26c0e
    # WorldEdit: expect 76 b2 af ae = 0xaeafb276
    block += struct.pack('<I', 0)  # checksum of some kind
    block += compressed_data
    result += block
    return result

if __name__ == '__main__':
    import glob
    import os

    files = glob.glob('testdata/save_*.w3v')
    results: list[tuple[str, War3Metadata, bytes]] = []
    for file in files:
        with open(file, 'rb') as fp:
            raw_data = fp.read()
        metadata, data = decompress_war3_file(raw_data)
        results.append((os.path.basename(file), metadata, raw_data))

    def get_bits_from_two_bytes(raw_bytes: bytes) -> str:
        bits = bin(int.from_bytes(raw_bytes, byteorder=ENDIANNESS)).removeprefix("0b")
        bits = ('0' * (16 - len(bits))) + bits
        return bits[0:4] + '_' + bits[4:8] + '_' + bits[8:12] + '_' + bits[12:16]

    table: set[str] = set()
    with open('scratch/compressed_checksums.txt', 'w') as fp:
        for result in results:
            print(f'# {result[0]}', file=fp)
            # print(f'checksum: {hex(result[1].block_checksum)}', file=fp)
            print(f'Header: {result[1].header_bytes.hex(" ")}', file=fp)
            print(f'sum:  {hex(sum(result[1].header_bytes[:4]))}', file=fp)
            print(result[1].compressed_data.hex(' '), file=fp)
            print(result[2][:0x44].hex(' '), file=fp)
            bits = get_bits_from_two_bytes(result[1].header_bytes[4:6])
            table.add(
                  f'| {result[1].header_bytes[:4].hex(" ")}  |'
                + f' {get_bits_from_two_bytes(result[1].header_bytes[:2])} |'
                + f' {result[1].header_bytes[4:6].hex(" ")}          |'
                + f' {result[1].header_bytes[5:6].hex()}{result[1].header_bytes[4:5].hex()}           |'
                + f' {bits} |')
            print('\n', file=fp)
        print('\n'.join(sorted(table)), file=fp)

    # print(raw_data.hex(' '))
    # metadata, contents = decompress_war3_file(raw_data)
    
    # print(compress_war3_file(metadata, contents).hex(' '))
    print('done')
