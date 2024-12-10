@echo off
dir backup*.dat 2>&1 1>&3 | "%~dp0\..\nhcolor.exe" 0c