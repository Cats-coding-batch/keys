chcp 1251
@echo off
setlocal
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
cls
title KEYS - Bootstart
cd Files
echo Проверка на наличие обнавлений!                            
:: Устанавливаем URL до файла версии на GitHub
set "remote_version_url=https://raw.githubusercontent.com/username/repository/main/version.txt"
set "local_version_file=version.txt"
set "downloaded_version_file=downloaded_version.txt"

:: Проверяем наличие локального файла версии
if not exist %local_version_file% (
    echo 1.0 > %local_version_file%
    echo Локальный файл версии не найден. Создан новый с версией 1.0.
)

:: Скачиваем удалённую версию
powershell -Command "Invoke-WebRequest %remote_version_url% -OutFile %downloaded_version_file%" >nul 2>&1

:: Проверяем успешность скачивания
if exist %downloaded_version_file% (
    :: Читаем версии
    set /p local_version=<%local_version_file%
    set /p remote_version=<%downloaded_version_file%

    :: Сравниваем
    if "%local_version%"=="%remote_version%" (
        echo Вы используете последнюю версию: %local_version%
    ) else (
        echo Доступна новая версия: %remote_version%
        echo Пожалуйста, обновитесь.
        :: Здесь можно добавить команду скачивания новой версии
    )

    :: Удаляем временный файл
    del %downloaded_version_file%
) else (
    echo Не удалось проверить обновления. Возможно, нет доступа к GitHub.
)
pause
echo Загрузка, погодите) плиз
start keys.exe
exit