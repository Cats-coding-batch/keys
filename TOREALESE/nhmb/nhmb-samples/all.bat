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

"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Information|Ok" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Information|OkCancel" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Information|RetryCancel" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Question|YesNo|DefButton2" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Question|YesNoCancel|DefButton3" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Warning|AbortRetryIgnore|DefButton3" "15"
echo %errorlevel%
"%~dp0\..\nhmb.exe" "Message text\nLine 2\nLine 3" "Message Caption" "Error|CancelTryContinue|DefButton3" "15"
echo %errorlevel%

