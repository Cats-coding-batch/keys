@echo off
setlocal
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
rem ver 2.0.0 beta 3.1
chcp 1251

rem Подгрузка библиотек
set IDOK=1
set IDCANCEL=2
set IDABORT=3
set IDRETRY=4
set IDIGNORE=5
set IDYES=6
set IDNO=7
set IDTRYAGAIN=10
set IDCONTINUE=11
rem Вот тут nhmb
title K.E.Y.S - Made by CCB
"%~dp0\nhmb\nhmb.exe" "K.E.Y.S Made by CCB\nБольшое спасибо за использование!\nЗагрузка Библиотек завершена! " "KEYS" "Information|OK" ""
"%~dp0\nhmb\nhmb.exe" "ЭТО БЕТА ВЕРСИЯ, полный функционал может быть недоступен" "KEYS" "Information|OK" ""

rem Здесь продолжайте выполнение вашего скрипта с правами администратора
cls
color 6
set /p filek=<key.txt
cls


"%~dp0\nhmb\nhcolor.exe" 0e ======================================
"%~dp0\nhmb\nhcolor.exe" 0e -----------------KEYS-----------------
"%~dp0\nhmb\nhcolor.exe" 0e ======================================
echo Cделано Cats coding Batch
echo.
echo K.E.Y.S - Только для Windows 10-11
echo КЛЮЧ = %filek%
>nul timeout/nobreak 4
echo Нажмите любую кнопку для перехода в меню
pause >nul
start menu.exe
exit