@echo off
chcp 1251
color 4
cls
echo Удаление активации виндовс через 3 секунды...
>nul timeout/nobreak 1
echo Удаление активации виндовс через 2 секунды...
>nul timeout/nobreak 1
echo Удаление активации виндовс через 1 секунды...
>nul timeout/nobreak 1
echo Удаление активации произошло успешно!
slmgr /upk
start menu.exe
exit