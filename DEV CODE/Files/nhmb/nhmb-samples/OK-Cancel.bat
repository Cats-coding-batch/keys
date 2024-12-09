@echo off

rem NHMB return codes

set IDOK=1
set IDCANCEL=2
set IDABORT=3
set IDRETRY=4
set IDIGNORE=5
set IDYES=6
set IDNO=7
set IDTRYAGAIN=10
set IDCONTINUE=11

"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Information|OkCancel" "15"
if "%errorlevel%" == "%IDCANCEL%" goto cancel
echo OK pressed, doing actions...
exit /b 0 
:cancel
echo Cancel  pressed, doing nothing
exit /b 1

