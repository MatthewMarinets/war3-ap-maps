"""
Removes the current packet files in the packet folder.
"""

import os
from . import comm
from ..data import heroes

def packet_flush() -> int:
    files_removed = 0
    for var_name in dir(comm):
        if var_name.endswith('_FILE'):
            packet_file = comm.__dict__[var_name]
            if os.path.isfile(packet_file):
                os.remove(packet_file)
                files_removed += 1
    for hero_slot in heroes.HeroSlot:
        filepath = f'{comm.PRELOADER_DIR}/hero_{hero_slot.value}.txt'
        if os.path.isfile(filepath):
            os.remove(filepath)
            files_removed += 1
    return files_removed

if __name__ == '__main__':
    print(f"Removed {packet_flush()} files")
