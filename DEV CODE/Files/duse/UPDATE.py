import requests
import sys
import curses
import subprocess
import webbrowser
from termcolor import colored
import cursor
import os
import time
import configparser
import webbrowser
os.system("title UPDATER (KEYS EDITION)")
def get_local_version():
    file_path = 'version.txt'
    """Читает локальную версию из файла versions.txt."""
    try:
        with open(file_path, 'r') as f:
            local_version = f.readline().strip()
            if not local_version:
                print(colored("[ERROR] Локальный файл версий пуст.", 'red'))
                starterror()
                return None
            return local_version
    except FileNotFoundError:
        print(colored("[ERROR] Локальный файл version.txt не найден.", 'red'))
        starterror()
        return None
    except Exception as e:
        print(olored(f"[ERROR] Ошибка при чтении локальной версии: {e}", 'red'))
        starterror()
        return None

def get_remote_version(url):

    try:
        response = requests.get(url, timeout=5)
        response.raise_for_status()  # Проверка на HTTP-ошибки
        remote_version = response.text.strip().split('\n')[0].strip()
        return remote_version
    except requests.exceptions.RequestException as e:
        print(colored(f"[ERROR] Ошибка при получении удаленной версии: нет доступа к репозиторию!", 'red'))
        starterror()
        return None

def parse_version(version_str):
    parts = version_str.split('.')
    if not all(part.isdigit() for part in parts):
        raise ValueError(f"Некорректный формат версии: {version_str}")
    return list(map(int, parts))

def is_newer(local_str, remote_str):
    local = parse_version(local_str)
    remote = parse_version(remote_str)
    
    for l, r in zip(local, remote):
        if r > l:
            return True
        elif r < l:
            return False
    
    return len(remote) > len(local)

def starterror():
    print()
    print(colored("Нажмите любую кнопку для перехода в KEYS!", 'yellow'))
    os.system("pause>nul")
    os.system('start "" KEYS.exe')
    sys.exit(2)

def main():
    print(colored(r"/$$   /$$                 /$$             /$$              ", 'light_blue'))
    print(colored(r"| $$  | $$                | $$            | $$              ", 'blue'))
    print(colored(r"| $$  | $$  /$$$$$$   /$$$$$$$  /$$$$$$  /$$$$$$    /$$$$$$", 'cyan'))
    print(colored(r"| $$  | $$ /$$__  $$ /$$__  $$ |____  $$|_  $$_/   /$$__  $$", 'magenta'))
    print(colored(r"| $$  | $$| $$  \ $$| $$  | $$  /$$$$$$$  | $$    | $$$$$$$$", 'light_magenta'))
    print(colored(r"| $$  | $$| $$  | $$| $$  | $$ /$$__  $$  | $$ /$$| $$_____/", 'yellow'))
    print(colored(r"|  $$$$$$/| $$$$$$$/|  $$$$$$$|  $$$$$$$  |  $$$$/|  $$$$$$$", 'light_yellow'))
    print(colored(r" \______/ | $$____/  \_______/ \_______/   \___/   \_______/", 'green'))
    print(colored(r"          | $$  ", 'light_green'))                                            
    print(colored(r"          | $$ ", 'white'))                                             
    print(colored(r"          |__/ ", 'light_grey'))
    print()
    print(colored(r"Made by Cats Coding Batch :3 ", 'yellow', attrs=["bold"]))
    print()
    print(colored(r"Проверка на наличие обнавления программы, ожидайте!", 'light_green', attrs=["bold"]))
    print()
    # актуальный адрес репозитория
    remote_url = "https://raw.githubusercontent.com/Cats-coding-batch/keys/refs/heads/main/DEV%20CODE/Files/version.txt"
    
    local_version = get_local_version()
    if not local_version:
        sys.exit(1)
    
    remote_version = get_remote_version(remote_url)
    if not remote_version:
        sys.exit(1)
    

    try:
        if is_newer(local_version, remote_version):
            print(colored(f"[INFO] Доступно обновление: {remote_version} (Ваша версия: {local_version})", 'yellow'))
            time.sleep(1)
            print(colored("[INFO] Ссылка на актуальную версию будет открыта через 3 секунды!", 'green'))
            time.sleep(2)
            print(colored("[INFO] Открываю ссылку!", 'green'))
            webbrowser.open_new("https://github.com/Cats-coding-batch/keys")
            starterror()
        else:
            print(colored("[INFO] Программа актуальна. Обновление не требуется.", 'green'))
            time.sleep(1)
            os.system('start "" KEYS.exe')
            sys.exit(2)
    except ValueError as e:
        print(colored(f"[ERROR] Ошибка: {e}", 'red'))
        starterror()

if __name__ == "__main__":
    main()
