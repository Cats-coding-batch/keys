@echo off
chcp 1251
setlocal
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)
cd /d "%~dp0"
title GEN.0_0.exxexexexexex
cls
color e
echo Загрузка...
echo.
echo Погодите...
slmgr /skms kms.digiboy.ir
for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') do set "version=%%j"

rem Проверяем, является ли версия Home, Pro, или Single Language
if /i "%version%"=="Windows 10 Home" (
    set Edition=Home
    set KEY2=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if /i "%version%"=="Windows 10 Pro" (
    set Edition=Pro
    set KEY2=W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if /i "%version%"=="Windows 11 Pro" (
    set Edition=Pro
    set KEY2=W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if /i "%version%"=="Windows 11 Home" (
    set Edition=Home
    set KEY2=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if /i "%version%"=="Windows 10 Education" (
    set Edition=Education
    set KEY2=2WNVT-6NNHG-7CG2G-9J9T6-9B7F4
) else if /i "%version%"=="Windows 10 Enterprise" (
    set Edition=Enterprise
    set KEY2=NPPR9-FWDCX-D2C8J-H872K-2YT43
) else if /i "%version%"=="Windows 11 Education" (
    set Edition=Education
    set KEY2=2WNVT-6NNHG-7CG2G-9J9T6-9B7F4
) else if /i "%version%"=="Windows 11 Enterprise" (
    set Edition=Enterprise
    set KEY2=NPPR9-FWDCX-D2C8J-H872K-2YT43
) else if /i "%version%"=="Windows 10 Home Single Language" (
    set Edition=SingleLanguage
    set KEY2=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if /i "%version%"=="Windows 11 Home Single Language" (
    set Edition=SingleLanguage
    set KEY2=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if /i "%version%"=="Windows Server 2019 Standard" (
    set Edition=Server2019
    set KEY2=N69G4-B89J2-4G8F4-WWYCC-J464C
) else if /i "%version%"=="Windows Server 2019 Datacenter" (
    set Edition=Server2019
    set KEY2=WMDGN-G9PQG-XVVXX-R3X43-63DFG
) else if /i "%version%"=="Windows Server 2022 Standard" (
    set Edition=Server2022
    set KEY2=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
) else if /i "%version%"=="Windows Server 2022 Datacenter" (
    set Edition=Server2022
    set KEY2=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
) else if /i "%version%"=="Windows 10 Pro for Workstations" (
    set Edition=ProWorkstations
    set KEY2=6TPJF-3D6Y4-9C9C3-9C3C3-9C3C3
) else if /i "%version%"=="Windows 10 IoT Enterprise" (
    set Edition=IoTEnterprise
    set KEY2=2WNVT-6NNHG-7CG2G-9J9T6-9B7F4
) else if /i "%version%"=="Windows 11 Pro for Workstations" (
    set Edition=ProWorkstations
    set KEY2=6TPJF-3D6Y4-9C9C3-9C3C3-9C3C3
) else if /i "%version%"=="Windows 11 IoT Enterprise" (
    set Edition=IoTEnterprise
    set KEY2=2WNVT-6NNHG-7CG2G-9J9T6-9B7F4
) else (
    set Edition=Other
    set KEY2=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
)
echo.
echo Версия: %version%
echo Издание: %Edition%
echo Ключ: %KEY2%
echo.
slmgr /ipk %KEY2%
echo %KEY2% | clip
echo Информация скопирована в буфер обмена.
timeout /t 5 >nul
echo 
cls
color a
echo Успешно
cd /d "%~dp0"
echo %KEY2% > "key.txt"
"%~dp0\nhmb\nhmb.exe" "Успешно\nКЛЮЧ: %KEY2%\nКлюч был записан в буфер обмена" "KEYS" "Information|OK" "15"
echo [--------------------------------------]
echo ВАШ КЛЮЧ = %KEY2%
echo [--------------------------------------]
echo Ваша версия Windows: %Edition%
timeout /t 5 >nul
echo Нажмите любую кнопку для перехода в меню
pause >nul
start menu.exe