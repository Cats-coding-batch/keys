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
echo [10%]Loading Ninite
ping localhost -n 3 >nul
color 9
echo [30%]Generator Setup...
ping localhost -n 3 >nul
color b
echo [50%]Connecting updates...
ping localhost -n 2 >nul
color d
echo [70%]Setting up the program...
ping localhost -n 3 >nul
color 1
echo [80%]Inject in UAC, CMD
title K.E.Y.S (Made by C.C.B) 
ping localhost -n 4 >nul
color a
echo [100%]Complete!
echo MsgBox "Made by C.C.B (Cats coding Batch)", , "K.E.Y.S" > CCB.vbs
cscript //nologo CCB.vbs
del CCB.vbs
ping localhost -n 2 >nul

goto start 

:startrun
color 6
cls


echo [-----------------------------]
echo Welcome, %username%. in K.E.Y.S 
echo [-----------------------------]
echo Made by Cats coding Batch
echo Translate by Random7YT
echo.
echo K.E.Y.S - Only for Windows 10-11 
>nul timeout/nobreak 4
echo Press any key
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
echo 1. Start geniration
echo 2. Boosty
echo 3. Telegram C.C.B
echo 4. Start menu
echo 5. Delete Windows activation (DANGER!)
echo 6. Back TO Russian Version
echo 7. Exit
echo.
echo [--------------------------------------]
echo Key = %KEY%
echo [--------------------------------------]
set /p choice=Select an item: 
if %choice%==1 (
    goto gen
) else if %choice%==2 (
	cls
    color a
	echo Starting Boosty
	ping localhost -n 3 >nul
	start https://boosty.to/foxinabox
	echo Back to menu
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
	echo Remove Windows activation in 3 second...
	>nul timeout/nobreak 1
	echo Remove Windows activation in 2 second...
	>nul timeout/nobreak 1
	echo Remove Windows activation in 1 second...
	>nul timeout/nobreak 1
	echo Removal of activation was successful!
	slmgr /upk
	goto menurun
) else if %choice%==7 (
	exit
) else if %choice%==6 (
	start keys.cmd
	exit
) else (
	cls
	color 4
    echo Error 432, Select a number from the list HUMAN
	echo AGAIN YOU WILL MAKE A BAG OF BONES, I'M AFRAID THEY WILL NOT BE ABLE TO EXPLAIN YOUR MISSING!
	>nul timeout/nobreak 1
    echo Destroying Windows via
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
echo    Loading...        Genirate key
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
echo    Loading.          Genirate key
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
echo    Loading..         Genirate key
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
echo    Loading...        Genirate key
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
echo    Loading.          Genirate key
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
echo    Loading..         Genirate key
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
echo    Loading...        Genirate key
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
echo    Loading.          Genirate key
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
echo    Loading..         Genirate key
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
echo    Loading...        Genirate key
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
echo    Loading.           Genirate key
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
echo    Loading..         Genirate key
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
echo    Loading...        Genirate key
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
echo    Loading.          Genirate key
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
echo    Loading..         Genirate key
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

rem Получаем информацию о версии Windows из реестра
for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') do set "version=%%j"

rem Проверяем, является ли версия Home или Pro
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
	set KEY=M7XTQ-FN8P6-TTKYV-9D4CC-J462D или KBN8V-HFGQ4-MGXVD-347P6-PDQGT
)


if %Edition%==Pro (
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if %Edition%==Home (
	slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else (
	slmgr /ipk KBN8V-HFGQ4-MGXVD-347P6-PDQGT
	slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
)

echo    Loading...        Genirate key
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
echo    Loading.          Genirate key
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
echo    Loading..         Genirate key
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
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cls
color a
start explorer.exe
echo Complete
echo [--------------------------------------]
echo Your key = %KEY%
echo [--------------------------------------]
echo Your version: %Edition%
>nul timeout/nobreak 5
echo Press any key
pause >nul
goto menurun
:start
cls
set KEY=Not ready
color 6
echo [---------------------------------------]

echo [----------------K.E.Y.S----------------]

echo [---------------------------------------]
echo Starting
ping localhost -n 2 >nul
goto startrun