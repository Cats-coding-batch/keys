@echo off
setlocal enabledelayedexpansion
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
chcp 1251>NULL
cls
title KEYS
cd Files
echo Загрузка, погодите) плиз
start KEYS.exe -menu
exit