import curses
import subprocess # type: ignore
import webbrowser # type: ignore
from termcolor import colored
import cursor
import os

cursor.hide()
os.system("title K.E.Y.S")


try:
    with open('key.txt', 'r') as file:
        key_content = file.read().strip()
except FileNotFoundError:
    key_content = "Кароче или ты файл py открыл или ты прогу и директории украл"

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

def support_author():
    webbrowser.open("https://www.donationalerts.com/r/catscoding")

def remove_activation():
    subprocess.Popen(f'start cmd /k "{del_file_path}"', shell=True)
    curses.endwin()
    os._exit(0)

def links_menu(stdscr):
    links = [
        ("Телеграм Канал", "https://example.com/1"),
        ("Задонатить на покушать", "https://www.donationalerts.com/r/catscoding"),
        ("Github", "https://github.com/Cats-coding-batch"),
        ("Назад", None)
    ]
    
    current_row = 0
    
    while True:
        stdscr.clear()
        stdscr.addstr(0, 0, "Меню ссылок", curses.A_BOLD)
        stdscr.addstr(2, 0, "Выберите ссылку для открытия:", curses.A_BOLD)
        stdscr.curs_set(0);

        for idx, (row, _) in enumerate(links):
            if idx == current_row:
                stdscr.addstr(idx + 5, 0, row, curses.A_REVERSE)
            else:
                stdscr.addstr(idx + 5, 0, row)

        stdscr.refresh()

        key = stdscr.getch()

        if key == curses.KEY_UP:
            current_row = (current_row - 1) % len(links)
        elif key == curses.KEY_DOWN:
            current_row = (current_row + 1) % len(links)
        elif key in (10, 13):  # Enter
            if current_row == len(links) - 1:  #
                return  
            else:
                webbrowser.open(links[current_row][1])
                stdscr.addstr(len(links) + 5, 0, "Ссылка открыта!")
                stdscr.refresh()
                stdscr.getch()  

def main(stdscr):
    stdscr.clear()
    curses.init_pair(1, curses.COLOR_YELLOW, curses.COLOR_BLACK)
    curses.init_pair(2, curses.COLOR_CYAN, curses.COLOR_BLACK)
    curses.init_pair(3, curses.COLOR_MAGENTA, curses.COLOR_BLACK)
    curses.init_pair(4, curses.COLOR_GREEN, curses.COLOR_BLACK)
    curses.init_pair(5, curses.COLOR_RED, curses.COLOR_BLACK)

    menu = [
        ("Начать генерацию", start_generation),
        ("Поддержать автора", support_author),
        ("Удалить активацию виндовс (ОЧЕНЬ ОПАСНО!)", remove_activation),
        ("Меню ссылок", links_menu),
        ("EXIT", exit_program)
    ]
    
    current_row = 0
    
    while True:
        stdscr.clear()
        stdscr.addstr(0, 0, "Добро пожаловать в меню!", curses.A_BOLD)
        stdscr.addstr(2, 0, "p.s: Используйте стрелки для навигации и Enter для выбора.", curses.color_pair(2))
        stdscr.addstr(1, 0, f"КЛЮЧ = {key_content}", curses.color_pair(1))
        stdscr.addstr(3, 0, "Выберите опцию:", curses.A_BOLD)

        for idx, (row, _) in enumerate(menu):
            if idx == current_row:
                stdscr.addstr(idx + 5, 0, row, curses.A_REVERSE)
            else:
                stdscr.addstr(idx + 5, 0, row)

        stdscr.refresh()

        key = stdscr.getch()

        if key == curses.KEY_UP:
            current_row = (current_row - 1) % len(menu)
        elif key == curses.KEY_DOWN:
            current_row = (current_row + 1) % len(menu)
        elif key in (10, 13):
            if current_row == 3: 
                menu[current_row][1](stdscr)  
            else:
                menu[current_row][1]()  
        else:
            continue

def start():
    clear_screen()
    print(colored("======================================", 'cyan'))
    print(colored("-----------------KEYS-----------------", 'cyan'))
    print(colored("======================================", 'cyan'))
    print(colored("Сделано Cats coding Batch", 'yellow'))
    print()
    print(colored("K.E.Y.S - Только для Windows", 'green'))
    print(colored(f"КЛЮЧ = {key_content}", 'blue'))
    print(colored("Нажмите любую кнопку для перехода в меню!", 'yellow'))
    os.system("pause>nul")
    curses.wrapper(main)

start()