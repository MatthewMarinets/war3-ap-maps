"""
Utilities for dealing with binary files
"""

from typing import Literal
import io
import struct

ENDIANNESS: Literal['little'] = 'little'
SIZE_OF_INT_IN_BYTES = 4
NULL_ID = "null"

class EndOfDataError(Exception): pass

class ByteArrayParser:
    def __init__(self, raw_bytes: bytes) -> None:
        self.index = 0
        self.raw_bytes = raw_bytes
    def peek(self, num_bytes: int = 1) -> bytes:
        return self.raw_bytes[self.index:self.index+num_bytes]
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
    def read_u16(self) -> int:
        start_index = self.index
        self.index += 2
        return struct.unpack_from('=H', self.raw_bytes, start_index)[0]
    def read_s16(self) -> int:
        start_index = self.index
        self.index += 2
        return struct.unpack_from('=h', self.raw_bytes, start_index)[0]
    def read_u8(self) -> int:
        start_index = self.index
        self.index += 1
        return struct.unpack_from('B', self.raw_bytes, start_index)[0]
    def read_s8(self) -> int:
        start_index = self.index
        self.index += 1
        return struct.unpack_from('b', self.raw_bytes, start_index)[0]
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
    def read_id(self) -> str:
        id_bytes = self.read_bytes(4)
        if id_bytes == b'\0\0\0\0':
            return NULL_ID
        try:
            return id_bytes.decode('utf-8')
        except UnicodeDecodeError:
            raise ValueError(f'Invalid ID bytes: {id_bytes!r}')
    def read_cstring(self) -> str:
        bytes_parts = self.raw_bytes[self.index:].split(b'\x00', 1)
        if len(bytes_parts) != 2:
            raise struct.error('bytes does not contain a null character')
        self.index += len(bytes_parts[0]) + 1
        return bytes_parts[0].decode('utf-8')
    def read_buffer_string(self, length: int) -> str:
        string_bytes = self.read_bytes(length)
        bytes_parts = string_bytes.split(b'\0', 1)
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

class ByteArrayWriter:
    def __init__(self) -> None:
        self.data = bytearray()
    def as_bytes(self) -> bytes:
        return bytes(self.data)
    def write_bytes(self, value: bytes) -> 'ByteArrayWriter':
        self.data.extend(value)
        return self
    def write_u8(self, value: int) -> 'ByteArrayWriter':
        assert value >= 0 and value < 256, f'{value} is not a valid u8'
        self.data.append(value)
        return self
    def write_s8(self, value: int) -> 'ByteArrayWriter':
        assert value >= -128 and value < 128, f'{value} is not a valid s8'
        self.data.extend(struct.pack("b", value))
        return self
    def write_u16(self, value: int) -> 'ByteArrayWriter':
        assert value >= 0 and value < 65536, f'{value} is not a valid u16'
        self.data.extend(struct.pack('<H', value))
        return self
    def write_s16(self, value: int) -> 'ByteArrayWriter':
        assert value >= -0x8000 and value < 0x8000, f'{value} is not a valid s16'
        self.data.extend(struct.pack('<h', value))
        return self
    def write_u32(self, value: int) -> 'ByteArrayWriter':
        self.data.extend(struct.pack("<I", value))
        return self
    def write_int32(self, value: int) -> 'ByteArrayWriter':
        self.data.extend(struct.pack("<i", value))
        return self
    def write_bool32(self, value: bool) -> 'ByteArrayWriter':
        self.data.extend(struct.pack("<i", value))
        return self
    def write_id(self, value: str) -> 'ByteArrayWriter':
        if value == NULL_ID:
            self.data.extend(b'\0\0\0\0')
            return self
        assert len(value) == 4, f'"{value}" is not a valid ID; must be length 4'
        self.data.extend(value.encode('utf-8'))
        return self
    def write_cstring(self, value: str) -> 'ByteArrayWriter':
        self.data.extend(value.encode('utf-8'))
        self.data.append(0)
        return self
    def write_string(self, value: str) -> 'ByteArrayWriter':
        return self.write_cstring(value)
    def write_buffer_string(self, value: str, length: int) -> 'ByteArrayWriter':
        assert len(value) < length
        self.data.extend(value.encode('utf-8'))
        self.data.extend(b'\0' * (length - len(value)))
        return self
    def write_float(self, value: float) -> 'ByteArrayWriter':
        self.data.extend(struct.pack('f', value))
        return self

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
