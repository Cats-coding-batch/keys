rem ver 2.0.0 beta 2
chcp 855
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

rem ô¦¨ãí ØáÖ¦ÖÐé ½å¨ ëñØÖÐÔ¨Ô·¨ ë õ¨¬Ö ãÆá·Øå  ã Øá ë Ò·  ¦Ò·Ô·ãåá åÖá 
@echo off
cls
goto nb
:startrun
color 6
cls


"%~dp0\nhmb\nhcolor.exe" 0e [---------------------------------------]
"%~dp0\nhmb\nhcolor.exe" 0e [-----------------KEYS------------------]
"%~dp0\nhmb\nhcolor.exe" 0e [---------------------------------------]
echo C¦¨Ð ÔÖ Cats coding Batch
echo.
echo K.E.Y.S - æÖÐíÆÖ ¦ÐÞ Windows 10-11 
>nul timeout/nobreak 4
echo Õ éÒ·å¨ Ðœ¢çœ ÆÔÖØÆç ¦ÐÞ Ø¨á¨µÖ¦  ë Ò¨Ôœ
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

:menurun
cls
color 6
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo º  MENU                                        º
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo º1. Õ û åí ¬¨Ô¨á ¤·œ                           º
echo º2. ÝÖ¦¦¨áé åí  ëåÖá                           º
echo º3. æ­Ç Cats coding batch                      º
echo º4. ì ãå áåÖëÖ¨ Ò¨Ôœ                           º
echo º5. è¦ Ð·åí  Æå·ë ¤·œ ë·Ô¦Öëã (×ü©Õî ×Ý¡äÕ×!)   º
echo º6. English Version                            º
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo ºÇÑü = %key% º
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
set /p choice=ìñ¢¨á· ØçÔÆå: 
if %choice%==1 (
	"%~dp0\nhmb\nhmb.exe" "£ÖÐíõ Þ ØáÖãí¢ ,\nÔ¨ ëñÆÐœû åí ØáÖ¬á ÒÒç ëÖ ëá¨ÒÞ ¬¨Ô¨á¤·· ÆÐœû !\nÕ ¦¨œãí ëã¨ ØÖÔÞåÔÖ " "KEYS" "Information|NoButtons" "10"
    goto gen
) else if %choice%==2 (
	cls
    color a
	echo ô ØçãÆ œ £çãå·
	ping localhost -n 3 >nul
	start https://boosty.to/foxinabox
	echo ìÖóëá ù¨Ô·¨ ë Ò¨Ôœ
	goto menurun
) else if %choice%==3 (
	cls
	color 1
    start https://t.me/Cats_coding_batch
	ping localhost -n 3 >nul
	echo ìÖóëá ù¨Ô·¨ ë Ò¨Ôœ
	goto menurun
) else if %choice%==4 (
	cls
	goto start
) else if %choice%==5 (
	color 4
	cls
	echo MsgBox "poshalko shto z debil" > CCB.vbs
	cscript //nologo CCB.vbs
	del CCB.vbs
	echo è¦ Ð¨Ô·¨  Æå·ë ¤·· ë·Ô¦Öëã û¨á¨ó 3 ã¨ÆçÔ¦ñ...
	>nul timeout/nobreak 1
	echo è¦ Ð¨Ô·¨  Æå·ë ¤·· ë·Ô¦Öëã û¨á¨ó 2 ã¨ÆçÔ¦ñ...
	>nul timeout/nobreak 1
	echo è¦ Ð¨Ô·¨  Æå·ë ¤·· ë·Ô¦Öëã û¨á¨ó 1 ã¨ÆçÔ¦ñ...
	>nul timeout/nobreak 1
	echo è¦ Ð¨Ô·¨  Æå·ë ¤·· ØáÖ·óÖõÐÖ çãØ¨õÔÖ!
	slmgr /upk
	goto menurun
) else if %choice%==6 (
	start keyse.cmd
	exit
) else (
	cls
	goto kill
)

:kill
color 4
"%~dp0\nhmb\nhmb.exe" "æñ ¦ÖÐ¢ ¨¢?" "Message Caption" "Error|YesNo" ""
if "%errorlevel%" == "%IDNO%" goto no
echo ÓÖÐÖ¦¨¤, ÒÖé¨õí ·¦å·
ping localhost -n 2 >nul
goto menurun
:no
>nul timeout/nobreak 1
echo èÔ·ûåÖé¨Ô·¨ ë·Ô¦Öëã û¨á¨ó
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
echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .          ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .          ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .          ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .           ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .          ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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

rem ÝÖÐçû ¨Ò ·ÔªÖáÒ ¤·œ Ö ë¨áã·· Windows ·ó á¨¨ãåá 
for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') do set "version=%%j"

rem ÝáÖë¨áÞ¨Ò, ÞëÐÞ¨åãÞ Ð· ë¨áã·Þ Home ·Ð· Pro
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
	set KEY=M7XTQ-FN8P6-TTKYV-9D4CC-J462D ·Ð· KBN8V-HFGQ4-MGXVD-347P6-PDQGT
)


if %Edition%==Pro (
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if %Edition%==Home (
	slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else (
	slmgr /ipk KBN8V-HFGQ4-MGXVD-347P6-PDQGT
	slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
)

echo    ô ¬áçóÆ ...        ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ .          ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ..         ­¨Ô¨á·áçœ ÆÐœû
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
echo    ô ¬áçóÆ ...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cls
color a
start explorer.exe
echo èãØ¨õÔÖ
echo [--------------------------------------]
echo ì¡ö ÇÑü = %KEY%
echo [--------------------------------------]
echo ì õ  ë¨áã·Þ Windows: %Edition%
>nul timeout/nobreak 5
echo Õ éÒ·å¨ Ðœ¢çœ ÆÔÖØÆç ¦ÐÞ Ø¨á¨µÖ¦  ë Ò¨Ôœ
pause >nul
goto menurun
:start
cls
set KEY=xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
@echo off

goto startrun

:nb
setlocal EnableDelayedExpansion

rem Count the number of files in this dir (just as an example)
set n=0
for %%f in (*.*) do set /A n+=1

rem Fill "bar" variable with 70 characters
set "bar="
for /L %%i in (1,1,70) do set "bar=!bar!X"

rem Fill "space" variable with filler spaces
set "space="
for /L %%i in (1,1,110) do set "space=!space!_"

rem "Process" the files and show the progress bar in the title
set i=0
echo Processing files:
for %%f in (*.*) do (
   set /A i+=1, percent=i*100/n, barLen=70*percent/100
   for %%a in (!barLen!) do title !percent!%%  !bar:~0,%%a!%space%
   echo !i!- %%f
   ping -n 1 localhost > NUL
)
rem ÝÖ¦¬áçóÆ  ¢·¢Ð·Öå¨Æ
set IDOK=1
set IDCANCEL=2
set IDABORT=3
set IDRETRY=4
set IDIGNORE=5
set IDYES=6
set IDNO=7
set IDTRYAGAIN=10
set IDCONTINUE=11
rem ìÖå åçå nhmb
title K.E.Y.S - Made by CCB
"%~dp0\nhmb\nhmb.exe" "K.E.Y.S Made by CCB\n£ÖÐíõÖ¨ ãØ ã·¢Ö ó  ·ãØÖÐíóÖë Ô·¨!\nô ¬áçóÆ  £·¢Ð·Öå¨Æ ó ë¨áõ¨Ô ! " "KEYS" "Information|NoButtons" "5"
"%~dp0\nhmb\nhmb.exe" "øæ× £©æ¡ ì©âä¸à, ØÖÐÔñ½ ªçÔÆ¤·ÖÔ Ð ÒÖé¨å ¢ñåí Ô¨¦ÖãåçØ¨Ô" "KEYS" "Information|NoButtons" "5"
goto start 