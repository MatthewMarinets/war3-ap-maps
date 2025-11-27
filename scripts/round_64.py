"""
Rounds to the nearest multiple of 64.
Useful for finding building coordinates from editor map hovers (buildigs snap to a 64-unit increment)
"""

def round_64(value: float) -> int:
    return 64 * round(value / 64)

if __name__ == '__main__':
    import sys
    for _arg in sys.argv[1:]:
        for _argpart in _arg.split(','):
            if not _argpart.strip():
                continue
            print(f'{_argpart} -> {round_64(float(_argpart))}')
