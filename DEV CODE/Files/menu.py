import curses
import subprocess
import webbrowser
from termcolor import colored
import os
os.system("title K.E.Y.S - Меню")
gen_file_path = f'gen.cmd'  # Update this to the correct path
start_file_path = f'start.cmd'  # Update this to the correct path
del_file_path = f'del.cmd'  # Update this to the correct path
def start_generation():
    p = subprocess.Popen(f'start cmd /k "{gen_file_path}"', shell=True)
    return "Открываем"
def support_author():
    webbrowser.open("https://boosty.to/foxinabox")
    return "Открываем"
def tgk_cats_coding_batch():
    webbrowser.open("https://t.me/Cats_coding_batch")
    return "Открываем"
def remove_activation():
    p = subprocess.Popen(f'start cmd /k "{del_file_path}"', shell=True)
    return "Открываем"
def startmenu():
    p = subprocess.Popen(f'start cmd /k "{start_file_path}"', shell=True)
    return "Открываем"

def main(stdscr):
    # Очищаем экран
    stdscr.clear()
    curses.init_pair(1, curses.COLOR_YELLOW, curses.COLOR_BLACK)  # Желтый текст
    curses.init_pair(2, curses.COLOR_CYAN, curses.COLOR_BLACK)    # Голубой текст
    curses.init_pair(3, curses.COLOR_MAGENTA, curses.COLOR_BLACK)  # Пурпурный текст
    

    # Список элементов меню и соответствующие функции
    menu = [
        ("Начать генерацию", start_generation),
        ("Поддержать автора", support_author),
        ("Стартовое меню", startmenu),
        ("ТГК Cats coding batch", tgk_cats_coding_batch),
        ("Удалить активацию виндовс (ОЧЕНЬ ОПАСНО!)", remove_activation),
        ("Выход", None)
    ]
    
    current_row = 0
    
    while True:
        # Отображаем меню
        stdscr.clear()
        stdscr.addstr(0, 0, "Добро пожаловать в меню! Выберите опцию:", curses.A_BOLD)
        stdscr.addstr(1, 0, "p.s: Используйте стрелки для навигации и Enter для выбора. ", curses.color_pair(2))

        # Начинаем отображение меню с 4-й строки
        for idx, (row, _) in enumerate(menu):
            if idx == current_row:
                stdscr.addstr(idx + 4, 0, row, curses.A_REVERSE)  # Подсвечиваем текущий элемент
            else:
                stdscr.addstr(idx + 4, 0, row)

        stdscr.refresh()

        # Получаем ввод пользователя
        key = stdscr.getch()

        # Обработка нажатий клавиш
        if key == curses.KEY_UP and current_row > 0:
            current_row -= 1
        elif key == curses.KEY_DOWN and current_row < len(menu) - 1:
            current_row += 1
        elif key in (10, 13):  # Enter
            if current_row == len(menu) - 1:  # Если выбрали "Выход"
                break
            else:
                # Вызываем соответствующую функцию
                message = menu[current_row][1]()
                stdscr.addstr(len(menu) + 4, 0, message)  # Отображаем сообщение
                stdscr.refresh()
#                stdscr.getch()  # Ждем нажатия клавиши
                if current_row in [0, 2, 4]:  # Индексы для start_generation, startmenu, remove_activation
                    curses.endwin()
                    break
curses.wrapper(main)
