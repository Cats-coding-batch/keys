rem ver 2.0.0 beta 1 

chcp 1251
setlocal enableextensions
pushd "%~dp0"
set PATH=%cd%;%PATH%
if defined PROCESSOR_ARCHITEW6432 start "" %SystemRoot%\sysnative\cmd.exe /c "%~nx0" %* & goto :EOF
net session >nul 2>&1 || (
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\GetAdmin.vbs"
echo UAC.ShellExecute "%~nx0", "%*", "", "runas", 1 >> "%temp%\GetAdmin.vbs"
cscript //NOLOGO "%temp%\GetAdmin.vbs"
del /f /q "%temp%\GetAdmin.vbs" >nul 2>&1
exit
)
@echo off
cls
color 6
echo [10%]��������� Ninite
ping localhost -n 3 >nul
color 9
echo [30%]��������� ����������...
ping localhost -n 3 >nul
color b
echo [50%]��������� ����������...
ping localhost -n 2 >nul
color d
echo [70%]���������� ���������...
ping localhost -n 3 >nul
color 1
echo [80%]������ � UAC, CMD
title K.E.Y.S (Made by C.C.B) 
ping localhost -n 4 >nul
color a
echo [100%]���������!
echo MsgBox "Made by C.C.B (Cats coding Batch)", , "K.E.Y.S" > CCB.vbs
cscript //nologo CCB.vbs
del CCB.vbs
ping localhost -n 2 >nul

goto start 

:startrun
color 6
cls


echo [---------------------------------------]
echo ����� ���������, %username%. � �� Keys 
echo [---------------------------------------]
echo C������ Cats coding Batch
echo.
echo K.E.Y.S - ������ ��� Windows 10-11 
>nul timeout/nobreak 4
echo ������� ����� ������ ��� �������� � ����
pause >nul
:menu
cls
color 9
>nul timeout/nobreak 1
color 2
echo [--------------------------------------]
>nul timeout/nobreak 1
color 3
echo [-----------------MENU-----------------]
>nul timeout/nobreak 1
color 4
echo [--------------------------------------]
>nul timeout/nobreak 1
cls

:menurun
cls
echo [--------------------------------------]
echo [-----------------MENU-----------------]
echo [--------------------------------------]
>nul timeout/nobreak 1
color 6
echo.
echo 1. ������ ���������
echo 2. ���������� ������
echo 3. ��� Cats coding batch
echo 4. � ��������� ����
echo 5. ������� ��������� ������� (����� ������!)
echo 6. English Version
echo 7. ����� �� ���������
echo.
echo [--------------------------------------]
echo ���� = %KEY%
echo [--------------------------------------]
set /p choice=������ �����: 
if %choice%==1 (
    goto gen
) else if %choice%==2 (
	cls
    color a
	echo �������� �����
	ping localhost -n 3 >nul
	start https://boosty.to/foxinabox
	echo ����������� � ����
	goto menurun
) else if %choice%==3 (
	cls
    start https://t.me/Cats_coding_batch
	goto menurun
) else if %choice%==4 (
	cls
	goto startrun
) else if %choice%==5 (
	color 4
	cls
	echo MsgBox "poshalko shto z debil" > CCB.vbs
	cscript //nologo CCB.vbs
	del CCB.vbs
	echo �������� ��������� ������� ����� 3 �������...
	>nul timeout/nobreak 1
	echo �������� ��������� ������� ����� 2 �������...
	>nul timeout/nobreak 1
	echo �������� ��������� ������� ����� 1 �������...
	>nul timeout/nobreak 1
	echo �������� ��������� ��������� �������!
	slmgr /upk
	goto menurun
) else if %choice%==7 (
	exit
) else if %choice%==6 (
	start keyse.cmd
	echo MsgBox "English Version is Made by Random7YT" > CCB.vbs
	cscript //nologo CCB.vbs
	del CCB.vbs
	exit
) else (
	cls
	color 4
    echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 666, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo Error 432, ������ ����� �� ������ �������
	echo ��� ��� ��� �������� ����� ������, ����� ���� ������� ��������� �� ������!
	>nul timeout/nobreak 1
    echo ����������� ������� �����
	>nul timeout/nobreak 1
	echo 5
	>nul timeout/nobreak 1
	echo 4
	>nul timeout/nobreak 1
	echo 3
	>nul timeout/nobreak 1
	echo 2
	>nul timeout/nobreak 1
	echo 1
	>nul timeout/nobreak 1
	cscript //nologo rick.vbs
	exit
)

:gen
cls
taskkill /F /IM explorer.exe
cls
color 6
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������...        ��������� ����
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.          ��������� ����
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������...        ��������� ����
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.          ��������� ����
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
ping localhost -n 4 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������...        ��������� ����
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.          ��������� ����
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
slmgr /skms kms.digiboy.ir
echo    ��������...        ��������� ����
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.           ��������� ����
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������...        ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.          ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
setlocal

rem �������� ���������� � ������ Windows �� �������
for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') do set "version=%%j"

rem ���������, �������� �� ������ Home ��� Pro
if /i "%version%"=="Windows 10 Home" (
    set Edition=Home
	set KEY=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if /i "%version%"=="Windows 10 Pro" (
    set Edition=Pro
	set KEY=W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if /i "%version%"=="Windows 11 Pro" (
    set Edition=Pro
	set KEY=W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if /i "%version%"=="Windows 11 Home" (
    set Edition=Home
	set KEY=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else (
    set Edition=Other
	set KEY=M7XTQ-FN8P6-TTKYV-9D4CC-J462D ��� KBN8V-HFGQ4-MGXVD-347P6-PDQGT
)


if %Edition%==Pro (
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if %Edition%==Home (
	slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else (
	slmgr /ipk KBN8V-HFGQ4-MGXVD-347P6-PDQGT
	slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
)

echo    ��������...        ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������.          ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������..         ��������� ����
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ��������...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cls
color a
start explorer.exe
echo �������
echo [--------------------------------------]
echo ��� ���� = %KEY%
echo [--------------------------------------]
echo ���� ������ Windows: %Edition%
>nul timeout/nobreak 5
echo ������� ����� ������ ��� �������� � ����
pause >nul
goto menurun
:start
cls
set KEY=�� ������
color 6
echo [---------------------------------------]

echo [----------------K.E.Y.S----------------]

echo [---------------------------------------]
echo ������
ping localhost -n 2 >nul
goto startrun