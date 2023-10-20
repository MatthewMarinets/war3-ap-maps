
def files_equal(
    file_1_name: str,
    file_2_name: str,
    offset_1: int = 0,
    offset_2: int = 0
) -> bool:
    size_1 = os.path.getsize(file_1_name)
    size_2 = os.path.getsize(file_2_name)
    if (size_1 - offset_1) != (size_2 - offset_2):
        print(f'The files are different sizes ({size_1} != {size_2})')
        # return False
    byte = 0
    num_differences = 0
    with open(file_1_name, 'rb') as file1:
        with open(file_2_name, 'rb') as file2:
            file1.seek(offset_1)
            file2.seek(offset_2)
            # while byte < size_1:
            while file1.tell() < size_1 and file2.tell() < size_2:
                byte += 1
                char1 = file1.read(1)
                char2 = file2.read(1)
                if char1 != char2:
                    if num_differences < 50:
                        print(f'Difference at byte 0x{file1.tell():x}/0x{file2.tell():x}: {char1} != {char2}')
                    num_differences += 1
                    # return False
    print(f'{num_differences} bytes were different')
    # print('The files are binary equal')
    return True

if __name__ == '__main__':
    import sys
    import os
    if len(sys.argv) < 3:
        raise ValueError(f'At least 2 arguments are required, but {len(sys.argv) - 1} were given')
    file_1_name = sys.argv[1]
    file_2_name = sys.argv[2]
    if len(sys.argv) > 3:
        file_1_start = sys.argv[3]
        if file_1_start.startswith('0x'):
            file_1_start = int(file_1_start[2:], base=16)
        else:
            file_1_start = int(file_1_start)
    else:
        file_1_start = 0
    if len(sys.argv) > 4:
        file_2_start = sys.argv[4]
        if file_2_start.startswith('0x'):
            file_2_start = int(file_2_start[2:], base=16)
        else:
            file_2_start = int(file_2_start)
    else:
        file_2_start = 0
    files_equal(file_1_name, file_2_name, file_1_start, file_2_start)
    
