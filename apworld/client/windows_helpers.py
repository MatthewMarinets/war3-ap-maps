"""
Helpers for running on windows
"""
import os
import logging


def win32_get_documents_folder() -> str:
    import winreg
    try:
        key = winreg.OpenKey(
            winreg.HKEY_CURRENT_USER,
            r'Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders',
            0,
            winreg.KEY_ALL_ACCESS,
        )
        result = str(winreg.QueryValueEx(key, "Personal")[0])
    except FileNotFoundError:
        result = '%USERPROFILE%\\Documents'
    result = os.path.expanduser(result.replace('%USERPROFILE%', '~'))
    return result


def win32_check_allow_local_files(logger: logging.Logger) -> None:
    import winreg
    try:
        wc3_key = winreg.CreateKey(
            winreg.HKEY_CURRENT_USER,
            r'Software\Blizzard Entertainment\Warcraft III'
        )
        local_files_value = winreg.QueryValueEx(wc3_key, 'Allow Local Files')[0]
    except FileNotFoundError:
        local_files_value = 0
    if local_files_value != 1:
        logger.warning(
            "Your 'Allow local Files' key is not set; playing with 1.29 will not work. "
            "Run /setup in the Archipelago client to update the key."
        )