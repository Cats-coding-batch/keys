@echo off
chcp 1251
color 4
cls
echo �������� ��������� ������� ����� 3 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 2 �������...
>nul timeout/nobreak 1
echo �������� ��������� ������� ����� 1 �������...
>nul timeout/nobreak 1
echo �������� ��������� ��������� �������!
slmgr /upk
start menu.exe
exit