@echo off
chcp 1251
setlocal
title KEYS - �������� ����� � �������!
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
color 4
cls
echo �������� ��������� ������� ����� 3 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 2 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 1 �������...
>nul timeout/nobreak 1
cscript //I slmgr.vbs /ckms
cscript //I slmgr.vbs /upk
>nul timeout/nobreak 1
cls
color 2
>nul timeout/nobreak 1
echo �������� ��������� :)
>nul timeout/nobreak 3
start keys.exe -menu
exit