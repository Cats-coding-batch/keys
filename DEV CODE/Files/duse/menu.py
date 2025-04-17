import requests
import sys
import curses
import subprocess
import webbrowser
from termcolor import colored, cprint
import cursor
import os
import time
import configparser
import webbrowser
import keyboard
cursor.hide()
os.system("title KEYS")
# default
DEFAULT_CONFIG = {
    'COLORS': {
        'selected_item': 'MAGENTA',
        'regular_item': 'GREEN'
    }
}

#config.ini create
config = configparser.ConfigParser()
config_path = 'menuconfig.ini'

if not os.path.exists(config_path):
    config.read_dict(DEFAULT_CONFIG)
    with open(config_path, 'w') as configfile:
        config.write(configfile)
else:
    config.read(config_path)


color_settings = {
    'selected_item': config.get('COLORS', 'selected_item', fallback='MAGENTA'),
    'regular_item': config.get('COLORS', 'regular_item', fallback='GREEN')
}

#цвет в curses
COLOR_MAP = {
    'BLACK': curses.COLOR_BLACK,
    'RED': curses.COLOR_RED,
    'GREEN': curses.COLOR_GREEN,
    'YELLOW': curses.COLOR_YELLOW,
    'BLUE': curses.COLOR_BLUE,
    'MAGENTA': curses.COLOR_MAGENTA,
    'CYAN': curses.COLOR_CYAN,
    'WHITE': curses.COLOR_WHITE
}

def get_color(setting_name):
    color_name = color_settings[setting_name].upper()
    return COLOR_MAP.get(color_name, COLOR_MAP['MAGENTA' if setting_name == 'selected_item' else 'GREEN'])

try:
    with open('key.txt', 'r') as file:
        key_content = file.read().strip()
except FileNotFoundError:
    key_content = "[ERROOR] Файл key.txt не был обнаружен"

gen_file_path = 'gen.cmd'
start_file_path = 'start.cmd'
del_file_path = 'del.cmd'

def start_generation():
    subprocess.Popen(f'start cmd /k "{gen_file_path}"', shell=True)
    curses.endwin()
    os._exit(0)

def exit_program():
    curses.endwin()
    clear_screen()
    print(colored("програма бомбанула и вылетела :)", 'red'))
    print(colored("exit code: 0", 'red'))
    os._exit(0)

def clear_screen():
    os.system("cls" if os.name == "nt" else "clear")

def remove_activation():
    subprocess.Popen(f'start cmd /k "{del_file_path}"', shell=True)
    curses.endwin()
    os._exit(0)


def links_menu(stdscr):
    links = [
        ("Телеграм Канал", "https://t.me/Cats_coding_batch"),
        ("Задонатить на покушать", "https://www.donationalerts.com/r/catscoding"),
        ("Github", "https://github.com/Cats-coding-batch"),
        ("Назад", None)
    ]
    
    current_row = 0
    curses.curs_set(0)  # ← Changed from stdscr.curs_set(0) to curses.curs_set(0)

    while True:
        stdscr.clear()
        stdscr.addstr(0, 0, "Меню ссылок", curses.color_pair(1) | curses.A_BOLD)
        stdscr.addstr(2, 0, "Выберите ссылку для открытия:", curses.color_pair(2))
        curses.curs_set(0)  # ← Changed from stdscr.curs_set(0) to curses.curs_set(0)

        for idx, (row, _) in enumerate(links):
            y = idx + 4
            if idx == current_row:
                stdscr.addstr(y, 0, row, curses.color_pair(3) | curses.A_REVERSE)
            else:
                stdscr.addstr(y, 0, row, curses.color_pair(4))

        stdscr.refresh()

        key = stdscr.getch()

        if key == curses.KEY_UP:
            current_row = (current_row - 1) % len(links)
        elif key == curses.KEY_DOWN:
            current_row = (current_row + 1) % len(links)
        elif key in (10, 13):
            if current_row == len(links) - 1:
                return
            else:
                webbrowser.open(links[current_row][1])
                max_y, _ = stdscr.getmaxyx()
                message = "Ссылка открыта!"
                message_row = len(links) + 5
                if message_row < max_y:
                    try:
                        stdscr.addstr(message_row, 0, message, curses.color_pair(4))
                        stdscr.refresh()
                        #stdscr.getch()
                    except curses.error:
                        pass

def main(stdscr):
    # Инициализация цветов
    
    curses.init_pair(1, curses.COLOR_YELLOW, curses.COLOR_BLACK)  # заголовок (фиксированный)
    curses.init_pair(2, curses.COLOR_CYAN, curses.COLOR_BLACK)    # ключ (фиксированный)
    curses.init_pair(3, get_color('selected_item'), curses.COLOR_BLACK)  # выделенный пункт
    curses.init_pair(4, get_color('regular_item'), curses.COLOR_BLACK)   # обычный пункт
    curses.init_pair(5, curses.COLOR_RED, curses.COLOR_BLACK)     # предупреждения (фиксированный)

    menu = [
        ("Начать генерацию", start_generation),
        ("Удалить активацию виндовс (ОЧЕНЬ ОПАСНО!)", remove_activation),
        ("Меню ссылок", links_menu),
        ("EXIT", exit_program)
    ]
    
    current_row = 0
    
    while True:
        stdscr.clear()
        stdscr.addstr(0, 0, "Добро пожаловать в меню!", curses.color_pair(1) | curses.A_BOLD)
        stdscr.addstr(2, 0, f"КЛЮЧ = {key_content}", curses.color_pair(2))
        stdscr.addstr(4, 0, "Используйте стрелки для навигации и Enter для выбора.", curses.color_pair(2))
        stdscr.addstr(6, 0, "Выберите опцию:", curses.color_pair(1) | curses.A_BOLD)

        for idx, (row, _) in enumerate(menu):
            y = idx + 8
            if idx == current_row:
                stdscr.addstr(y, 0, row, curses.color_pair(3) | curses.A_REVERSE)
            else:
                stdscr.addstr(y, 0, row, curses.color_pair(4))

        stdscr.refresh()

        key = stdscr.getch()

        if key == curses.KEY_UP:
            current_row = (current_row - 1) % len(menu)
        elif key == curses.KEY_DOWN:
            current_row = (current_row + 1) % len(menu)
        elif key in (10, 13):
            selected_func = menu[current_row][1]
            if selected_func == links_menu:
                selected_func(stdscr)
            else:
                selected_func()


def start():
    clear_screen()
    print(colored(r" __    __  ________  __      __  ______  ", 'light_blue'))
    print(colored(r"/  |  /  |/        |/  \    /  |/      \ ", 'blue'))
    print(colored(r"$$ | /$$/ $$$$$$$$/ $$  \  /$$//$$$$$$  |", 'cyan'))
    print(colored(r"$$ |/$$/  $$ |__     $$  \/$$/ $$ \__$$/ ", 'magenta'))
    print(colored(r"$$  $$<   $$    |     $$  $$/  $$      \ ", 'light_magenta'))
    print(colored(r"$$$$$  \  $$$$$/       $$$$/    $$$$$$  |", 'yellow'))
    print(colored(r"$$ |$$  \ $$ |_____     $$ |   /  \__$$ |", 'light_yellow'))
    print(colored(r"$$ | $$  |$$       |    $$ |   $$    $$/ ", 'green'))
    print(colored(r"$$/   $$/ $$$$$$$$/     $$/     $$$$$$/  ", 'light_green')) 
    print()
    print(colored("Сделано: Cats coding Batch :3", 'yellow'))
    print()
    print(colored("KEYS - Только для Windows 10/11/Server", 'green'))
    print()
    print(colored("nam nam nam", 'light_magenta'))
    print(colored(f"", 'blue'))
    print(colored("Нажмите любую кнопку для перехода в меню!", 'yellow'))
    os.system("pause>nul")
    curses.wrapper(main)


if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "-menu":
            curses.wrapper(main)
        elif sys.argv[1] == "-links":
            curses.wrapper(links_menu)  #запуск меню ссылок
        else:
            start()
    else:
        start()

#    print(colored("======================================", 'cyan'))
#    print(colored("Доступные аргументы:", 'yellow'))
#    print(colored("-menu  : Открыть основное меню", 'green'))
#    print(colored("-links : Открыть меню ссылок", 'green'))
#    print(colored("======================================", 'cyan'))