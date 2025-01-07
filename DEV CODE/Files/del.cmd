@echo off
chcp 1251
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
start menu.exe