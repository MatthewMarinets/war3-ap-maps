"""
Utilities for dealing with binary files
"""

import io
import struct

ENDIANNESS = 'little'
SIZE_OF_INT_IN_BYTES = 4

class EndOfDataError(Exception): pass

class ByteArrayParser:
    def __init__(self, raw_bytes: bytes) -> None:
        self.index = 0
        self.raw_bytes = raw_bytes
    def read(self, format: str) -> tuple:
        start_index = self.index
        self.index += struct.calcsize(format)
        return struct.unpack_from(format, self.raw_bytes, start_index)
    def read_int32(self) -> int:
        start_index = self.index
        self.index += 4
        return struct.unpack_from('=i', self.raw_bytes, start_index)[0]
    def read_u32(self) -> int:
        start_index = self.index
        self.index += 4
        return struct.unpack_from('=I', self.raw_bytes, start_index)[0]
    def read_bool32(self) -> bool:
        start_index = self.index
        self.index += 4
        return struct.unpack_from('=i', self.raw_bytes, start_index)[0] != 0
    def read_float(self) -> float:
        start_index = self.index
        self.index += 4
        return struct.unpack_from('=f', self.raw_bytes, start_index)[0]
    def read_bytes(self, length: int) -> bytes:
        start_index = self.index
        self.index += length
        if self.index > len(self.raw_bytes):
            raise struct.error(f'insufficient data to read {length} bytes')
        return self.raw_bytes[start_index:self.index]
    def read_cstring(self) -> str:
        bytes_parts = self.raw_bytes[self.index:].split(b'\x00', 1)
        if len(bytes_parts) != 2:
            raise struct.error('bytes does not contain a null character')
        self.index += len(bytes_parts[0]) + 1
        return bytes_parts[0].decode('utf-8')

def read_string_from_buffer(buffer: io.BufferedReader) -> str:
    read_bytes = buffer.peek()
    if not read_bytes:
        raise ValueError('Buffer is empty')
    for length, byte in enumerate(read_bytes):
        if byte == 0:
            break
    else:
        raise ValueError('Buffer did not terminate a string')
    buffer.seek(length+1, 1)
    return read_bytes[:length].decode('utf-8')

if __name__ == '__main__':
    parser = ByteArrayParser(b'\xff\x00\x00\xff\xff\xffabcdef\0\0asdf')
    # should print (b'\xff', 0, nan)
    print(parser.read('=cbf'))
    # should print abcdef
    print(parser.read_cstring())
    # should print empty line
    print(parser.read_cstring())
    # should error
    print(parser.read_cstring())
