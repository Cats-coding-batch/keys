import subprocess # type: ignore
import webbrowser # type: ignore
from termcolor import colored
import cursor
import os
import time
aboba_file_path = 'start.exe'
os.system("title ")
os.system("title KEYS")
def clear_screen():
    os.system("cls" if os.name == "nt" else "clear")
def start():
    clear_screen()
    print(colored("======================================", 'cyan'))
    print(colored("-----------------KEYS-----------------", 'cyan'))
    print(colored("======================================", 'cyan'))
    print(colored("Сделано Cats coding Batch", 'yellow'))
    print()
    print(colored("K.E.Y.S - Только для Windows", 'green'))
    print(colored(f"", 'blue'))
    print(colored("Нажмите любую кнопку для перехода в меню!", 'yellow'))
    os.system("pause>nul")
    os.system("menu.exe")
    os._exit(0)
start()
clear_screen()
print(colored("постой", 'yellow'))