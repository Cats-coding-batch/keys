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

rem ��������� ���������
set IDOK=1
set IDCANCEL=2
set IDABORT=3
set IDRETRY=4
set IDIGNORE=5
set IDYES=6
set IDNO=7
set IDTRYAGAIN=10
set IDCONTINUE=11
rem ��� ��� nhmb
title K.E.Y.S - Made by CCB
"%~dp0\nhmb\nhmb.exe" "K.E.Y.S Made by CCB\n������� ������� �� �������������!\n�������� ��������� ���������! " "KEYS" "Information|OK" ""
"%~dp0\nhmb\nhmb.exe" "��� ���� ������, ������ ���������� ����� ���� ����������" "KEYS" "Information|OK" ""

rem ����� ����������� ���������� ������ ������� � ������� ��������������
cls
color 6
set /p filek=<key.txt
cls


"%~dp0\nhmb\nhcolor.exe" 0e ======================================
"%~dp0\nhmb\nhcolor.exe" 0e -----------------KEYS-----------------
"%~dp0\nhmb\nhcolor.exe" 0e ======================================
echo C������ Cats coding Batch
echo.
echo K.E.Y.S - ������ ��� Windows 10-11
echo ���� = %filek%
>nul timeout/nobreak 4
echo ������� ����� ������ ��� �������� � ����
pause >nul
start menu.exe
exit