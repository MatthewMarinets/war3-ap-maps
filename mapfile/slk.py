"""
Utilities for parsing .slk files
"""

from typing import NamedTuple
from .util.failable import Error


class SlkFile(NamedTuple):
    name: str
    column_headers: tuple[str, ...]
    cells: tuple[tuple[str, ...], ...]


def _split_semicolons(line: str) -> list[str]:
    elements = line.replace(';;', '♥').split(';')
    return [x.replace('♥', ';') for x in elements]


def parse_slk(lines: list[str]) -> tuple[tuple[str | int | float, ...], ...] | Error[tuple[str, int]]:
    grid: list[list[str]] = []
    lines = [x for x in lines if x]
    size_x = -1
    size_y = -1
    y_pos = -1
    expandable_grid = False
    if not lines:
        return Error(('No lines', 0))
    first_line = lines[0].strip()
    if not first_line.startswith('ID;'):
        return Error(('First line is not an ID record', 0))
    # Note(mm): As we are not writing that file, we don't care about N vs P protection / IDs
    for line_number, line in enumerate(lines[1:], 2):
        line = line.strip()
        if not line:
            continue
        parts = _split_semicolons(line)
        if parts[0] == 'ID':
            return Error(("Second ID record in file", line_number))
        elif parts[0] == 'B':
            # Bounds
            if size_x != -1 or size_y != -1:
                return Error(("Attempt to redefine bounds", line_number))
            for part in parts[1:]:
                if part.startswith('X'):
                    size_x = int(part[1:])
                elif part.startswith('Y'):
                    size_y = int(part[1:])
                # Ignore other arguments
            if size_x == -1:
                return Error(("B record did not define X size", line_number))
            if size_y == -1:
                return Error(("B record did not define Y size", line_number))
            grid = [['' for _ in range(size_x)] for y in range(size_y)]
        elif parts[0] == 'C':
            # Cell
            if not grid:
                expandable_grid = True
            if len(parts) < 2:
                return Error(("C record did not receive any arguments", line_number))
            x_pos = -1
            for part in parts[1:]:
                val: int | float | str | None = None
                if part.startswith("X") or part.startswith("C"):
                    x_pos = int(part[1:]) - 1
                elif part.startswith("Y") or part.startswith("R"):
                    y_pos = int(part[1:]) - 1
                elif part.startswith("K"):
                    if part[1] == '"':
                        val = part[2:-1]
                    elif part[1:] == 'FALSE':
                        val = False
                    elif part[1:] == 'TRUE':
                        val = True
                    elif part[1] == '#':
                        val = part[1:]
                    else:
                        try:
                            val = int(part[1:])
                        except ValueError:
                            val = float(part[1:])
                else:
                    return Error((f"C record received unsupported argument '{part}'", line_number))
            if x_pos == -1:
                return Error((f"C record did not receive required argument X position", line_number))
            if y_pos == -1:
                return Error((f"C record received command to write without a Y position defined", line_number))
            if val is None:
                return Error((f"C record did not receive a value to write", line_number))
            if expandable_grid:
                current_grid_size_y = len(grid)
                current_grid_size_x = len(grid[0]) if grid else 0
                grid_size_y = max(y_pos + 1, current_grid_size_y)
                grid_size_x = max(x_pos + 1, current_grid_size_x)
                for row in grid:
                    row.extend(['' for _ in range(grid_size_x - current_grid_size_x)])
                for _ in range(grid_size_y - current_grid_size_y):
                    grid.append(['' for _ in range(grid_size_x)])
            grid[y_pos][x_pos] = val
        elif parts[0] == 'E':
            # End
            break
        else:
            return Error((f"Unsupported line starting with ", line_number))
    return tuple(tuple(x) for x in grid)


def parse_slk_file(filename: str) -> tuple[tuple[str, ...], ...] | Error[tuple[str, int]]:
    with open(filename, 'r') as fp:
        lines = fp.readlines()
    return parse_slk(lines)

