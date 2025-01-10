"""Define the menu contents, hotkeys, and event bindings.

There is additional configuration information in the EditorWindow class (and
subclasses): the menus are created there based on the menu_specs (class)
variable, and menus not created are silently skipped in the code here.  This
makes it possible, for example, to define a Debug menu which is only present in
the PythonShell window, and a Format menu which is only present in the Editor
windows.

"""
from importlib.util import find_spec

from idlelib.config import idleConf

#   Warning: menudefs is altered in macosx.overrideRootMenu()
#   after it is determined that an OS X Aqua Tk is in use,
#   which cannot be done until after Tk() is first called.
#   Do not alter the 'file', 'options', or 'help' cascades here
#   without altering overrideRootMenu() as well.
#       TODO: Make this more robust

menudefs = [
 # underscore prefixes character to underscore
 ('file', [
   ('_Новый файл', '<<open-new-window>>'),
   ('_Открыть...', '<<open-window-from-file>>'),
   ('Открыть _модуль...', '<<open-module>>'),
   ('Обозреватель _модуля', '<<open-class-browser>>'),
   ('_Обозреватель путей', '<<open-path-browser>>'),
   None,
   ('_Сохранить', '<<save-window>>'),
   ('Сохранить _как...', '<<save-window-as-file>>'),
   ('Сохранить копию _как...', '<<save-copy-of-window-as-file>>'),
   None,
   ('Печать _окна', '<<print-window>>'),
   None,
   ('_Закрыть окно', '<<close-window>>'),
   ('Выйти из CIDE', '<<close-all-windows>>'),
   ]),

 ('edit', [
   ('_Отмена', '<<undo>>'),
   ('_Отмена отмены', '<<redo>>'),
   None,
   ('Выбрать _все', '<<select-all>>'),
   ('Вырезать', '<<cut>>'),
   ('_Копировать', '<<copy>>'),
   ('_Вставить', '<<paste>>'),
   None,
   ('_Найти...', '<<find>>'),
   ('Найти _снова', '<<find-again>>'),
   ('Найти _выделение', '<<find-selection>>'),
   ('Найти в файлах...', '<<find-in-files>>'),
   ('_Заменить...', '<<replace>>'),
   None,
   ('Перейти к _строке', '<<goto-line>>'),
   ('Показать _завершения', '<<force-open-completions>>'),
   ('_Развернуть слово', '<<expand-word>>'),
   ('Показать _подсказку', '<<force-open-calltip>>'),
   ('Показать окружающие _скобки', '<<flash-paren>>'),
   ]),

 ('format', [
   ('Форматировать _параграф', '<<format-paragraph>>'),
   ('_Увеличить отступ', '<<indent-region>>'),
   ('_Уменьшить отступ', '<<dedent-region>>'),
   ('Закомментировать _регион', '<<comment-region>>'),
   ('_Снять комментарий с региона', '<<uncomment-region>>'),
   ('Табуляция региона', '<<tabify-region>>'),
   ('Убрать табуляцию региона', '<<untabify-region>>'),
   ('Переключить табуляцию', '<<toggle-tabs>>'),
   ('Новая ширина отступа', '<<change-indentwidth>>'),
   ('Удалить пробелы в конце строки', '<<do-rstrip>>'),
   ]),

 ('run', [
   ('Запустить _модуль', '<<run-module>>'),
   ('Запуск... _Настроенный', '<<run-custom>>'),
   ('Проверить модуль', '<<check-module>>'),
   ('Python Shell', '<<open-python-shell>>'),
   ]),

 ('shell', [
   ('_Просмотреть последний перезапуск', '<<view-restart>>'),
   ('_Перезапустить оболочку', '<<restart-shell>>'),
   None,
   ('_Предыдущая история', '<<history-previous>>'),
   ('_Следующая история', '<<history-next>>'),
   None,
   ('_Прервать выполнение', '<<interrupt-execution>>'),
   ]),

 ('debug', [
   ('_Перейти к файлу/строке', '<<goto-file-line>>'),
   ('!_Отладчик', '<<toggle-debugger>>'),
   ('_Просмотр стека', '<<open-stack-viewer>>'),
   ('!_Автооткрытие просмотра стека', '<<toggle-jit-stack-viewer>>'),
   ]),

 ('options', [
   ('Настройки _CIDE', '<<open-config-dialog>>'),
   None,
   ('Show _Code Context', '<<toggle-code-context>>'),
   ('Show _Line Numbers', '<<toggle-line-numbers>>'),
   ('_Увеличить высоту', '<<zoom-height>>'),
   ]),

 ('window', [
   ]),

 ('help', [
   ('_О CIDE (Перевод Foxikbox)', '<<about-idle>>'),
   None,
   ('_Документация CIDE', '<<help>>'),
   ('Документация _Python', '<<python-docs>>'),
   ]),
]

if find_spec('turtledemo'):
    menudefs[-1][1].append(('Turtle Demo', '<<open-turtle-demo>>'))

default_keydefs = idleConf.GetCurrentKeySet()

if __name__ == '__main__':
    from unittest import main
    main('idlelib.idle_test.test_mainmenu', verbosity=2)
