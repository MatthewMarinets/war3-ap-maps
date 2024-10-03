"""
Utilities for handling .imp (map imports) files
"""

from dataclasses import dataclass, field
from mapfile import binary


@dataclass
class ImportedPath:
    path_type: int
    path: str


@dataclass
class Imports:
    version: int
    imports: list[ImportedPath]


def read_imp(raw_data: bytes) -> Imports:
    reader = binary.ByteArrayParser(raw_data)
    version = reader.read_int32()
    num_imports = reader.read_int32()
    result = Imports(version, [])
    if version == 0:
        for _ in range(num_imports):
            result.imports.append(ImportedPath(0, reader.read_cstring()))
    elif version == 1:
        for _ in range(num_imports):
            result.imports.append(ImportedPath(reader.read_u8(), reader.read_cstring()))
    else:
        assert False, f"Unable to handle .imp file of version {version}"
    return result


def write_binary(data: Imports) -> bytes:
    writer = binary.ByteArrayWriter()
    writer.write_int32(data.version)
    writer.write_int32(len(data.imports))
    for _import in data.imports:
        if data.version == 1:
            writer.write_u8(_import.path_type)
        writer.write_string(_import.path)
    return writer.as_bytes()


def as_text(data: Imports) -> str:
    result = [
        '# Warcraft 3 imports file',
        f'version = {data.version}\n',
    ]
    for _import in data.imports:
        result.append('[[imports]]')
        result.append(f'path_type = {_import.path_type}')
        result.append(f"path = '{_import.path}'\n")
    return '\n'.join(result)


def from_text(text: str) -> Imports:
    import tomllib
    result = tomllib.loads(text)
    return Imports(result['version'], [ImportedPath(**x) for x in result['imports']])



if __name__ == '__main__':
    from work import manifest
    import os
    filenames = [f'work/{x}/war3map.imp' for x in manifest.all_directories]
    filenames = [f for f in filenames if os.path.exists(f)]
    for filename in filenames:
        with open(filename, 'rb') as fp:
            contents = fp.read()
        data = read_imp(contents)
        toml_text = as_text(data)
        print(filename)
        print(toml_text)
        recovered_data = from_text(toml_text)
        round_tripped = write_binary(recovered_data)
        assert round_tripped == contents
    print('done')

