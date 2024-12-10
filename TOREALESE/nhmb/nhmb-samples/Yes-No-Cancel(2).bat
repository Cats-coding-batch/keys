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

"%~dp0\..\nhmb.exe" "Backup file already exists.\nfull-backup.dat\nDo you want to delete the existing file?" "Backup procedure" "Question|YesNoCancel|DefButton3" "15"
set code=%errorlevel%
if "%code%" == "%IDYES%" echo Yes pressed.
if "%code%" == "%IDNO%" echo No pressed
if "%code%" == "%IDCANCEL%" echo Cancel pressed

