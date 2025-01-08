import curses
import subprocess
import webbrowser
from termcolor import colored
import os

# Устанавливаем заголовок окна
os.system("title K.E.Y.S")

# Читаем содержимое файла и сохраняем в переменную
try:
    with open('key.txt', 'r') as file:
        key_content = file.read().strip()
except FileNotFoundError:
    key_content = "Файл key.txt не найден. Пожалуйста, убедитесь, что файл существует."

# Путь к файлам
gen_file_path = 'gen.cmd'  # Обновите путь, если необходимо
start_file_path = 'start.cmd'  # Обновите путь, если необходимо
del_file_path = 'del.cmd'  # Обновите путь, если необходимо

def start_generation():
    subprocess.Popen(f'start cmd /k "{gen_file_path}"', shell=True)
    curses.endwin()
    os._exit(n)
    return "Открываем генерацию..."

def f4():
    os._exit(n)
    return "Выход из программы..."

def clear_screen():
    """Очистка экрана в зависимости от операционной системы."""
    os.system("cls" if os.name == "nt" else "clear")

def support_author():
    webbrowser.open("https://boosty.to/foxinabox")
    return "Открываем страницу поддержки автора..."

def tgk_cats_coding_batch():
    webbrowser.open("https://t.me/Cats_coding_batch")
    return "Открываем Telegram-канал..."

def remove_activation():
    subprocess.Popen(f'start cmd /k "{del_file_path}"', shell=True)
    os._exit(n)
    return "Открываем удаление активации..."

def startmenu():
    curses.endwin()
    start()
    return "Открываем стартовое меню..."

def main(stdscr):
    # Очищаем экран
    stdscr.clear()
    curses.init_pair(1, curses.COLOR_YELLOW, curses.COLOR_BLACK)  # Желтый текст
    curses.init_pair(2, curses.COLOR_CYAN, curses.COLOR_BLACK)    # Голубой текст
    curses.init_pair(3, curses.COLOR_MAGENTA, curses.COLOR_BLACK)  # Пурпурный текст
    curses.init_pair(4, curses.COLOR_GREEN, curses.COLOR_BLACK)     # Зеленый текст
    curses.init_pair(5, curses.COLOR_RED, curses.COLOR_BLACK)       # Красный текст

    # Список элементов меню и соответствующие функции
    menu = [
        ("Начать генерацию", start_generation),
        ("Поддержать автора", support_author),
        ("Стартовое меню", startmenu),
        ("ТГК Cats coding batch", tgk_cats_coding_batch),
        ("Удалить активацию виндовс (ОЧЕНЬ ОПАСНО!)", remove_activation),
        ("EXIT", f4)
    ]
    
    current_row = 0
    
    while True:
        # Отображаем меню
        stdscr.clear()
        stdscr.addstr(0, 0, "Добро пожаловать в меню!", curses.A_BOLD)
        stdscr.addstr(2, 0, "p.s: Используйте стрелки для навигации и Enter для выбора.", curses.color_pair(2))
        stdscr.addstr(1, 0, f"КЛЮЧ = {key_content}", curses.color_pair(1))  # Исправлено отображение ключа
        stdscr.addstr(3, 0, "Выберите опцию:", curses.A_BOLD)

        # Начинаем отображение меню с 5-й строки
        for idx, (row, _) in enumerate(menu):
            if idx == current_row:
                stdscr .addstr(idx + 5, 0, row, curses.A_REVERSE)  # Подсвечиваем текущий элемент
            else:
                stdscr.addstr(idx + 5, 0, row)

        stdscr.refresh()

        # Получаем ввод пользователя
        key = stdscr.getch()

        # Обработка нажатий клавиш
        if key == curses.KEY_UP:
            current_row = (current_row - 1) % len(menu)  # Переход к предыдущему элементу
        elif key == curses.KEY_DOWN:
            current_row = (current_row + 1) % len(menu)  # Переход к следующему элементу
        elif key in (10, 13):  # Enter
            # Вызываем соответствующую функцию
            message = menu[current_row][1]()
            stdscr.addstr(len(menu) + 5, 0, message)  # Отображаем сообщение
            stdscr.refresh()
        else:
            continue  # Игнорируем другие нажатия

def start():
    clear_screen()
    # Вывод информации в консоль
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