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
echo �������� �� ������� ����������!                            
:: ������������� URL �� ����� ������ �� GitHub
set "remote_version_url=https://raw.githubusercontent.com/username/repository/main/version.txt"
set "local_version_file=version.txt"
set "downloaded_version_file=downloaded_version.txt"

:: ��������� ������� ���������� ����� ������
if not exist %local_version_file% (
    echo 1.0 > %local_version_file%
    echo ��������� ���� ������ �� ������. ������ ����� � ������� 1.0.
)

:: ��������� �������� ������
powershell -Command "Invoke-WebRequest %remote_version_url% -OutFile %downloaded_version_file%" >nul 2>&1

:: ��������� ���������� ����������
if exist %downloaded_version_file% (
    :: ������ ������
    set /p local_version=<%local_version_file%
    set /p remote_version=<%downloaded_version_file%

    :: ����������
    if "%local_version%"=="%remote_version%" (
        echo �� ����������� ��������� ������: %local_version%
    ) else (
        echo �������� ����� ������: %remote_version%
        echo ����������, ����������.
        :: ����� ����� �������� ������� ���������� ����� ������
    )

    :: ������� ��������� ����
    del %downloaded_version_file%
) else (
    echo �� ������� ��������� ����������. ��������, ��� ������� � GitHub.
)
pause
echo ��������, ��������) ����
start keys.exe
exit