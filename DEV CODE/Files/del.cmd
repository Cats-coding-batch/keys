@echo off
chcp 1251
setlocal
title KEYS - Удаление ключа и сервера!
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
color 4
cls
echo Удаление активации виндовс через 3 секунды...
>nul timeout/nobreak 1
echo Удаление активации виндовс через 2 секунды...
>nul timeout/nobreak 1
echo Удаление активации виндовс через 1 секунды...
>nul timeout/nobreak 1
cscript //I slmgr.vbs /ckms
cscript //I slmgr.vbs /upk
>nul timeout/nobreak 1
cls
color 2
>nul timeout/nobreak 1
echo Удаление произошло :)
>nul timeout/nobreak 3
start keys.exe -menu
exit