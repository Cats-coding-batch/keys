@echo off

"%~dp0\..\nhcolor.exe" 02 nhcolor with 3 filters 
echo Lines with 'success' will be typed in Green, with 'warning' - in Yellow, and lines with 'error' - in Red | "%~dp0\..\nhcolor.exe" 0a,success 0e,warning 0c,error  
type output.txt | "%~dp0\..\nhcolor.exe" 0a,"^.*success.*$" 0e,"^.*warning.*$" 0c,"^.*error.*$"  
echo.
type output.txt | "%~dp0\..\nhcolor.exe" 0a,success 0e,warning 0c,error

