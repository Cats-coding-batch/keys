Dim response
response = MsgBox("�� ��� �த������?", vbYesNo + vbQuestion, "���⢥ত����")

If response = vbYes Then
    MsgBox "�� ��ࠫ� �த������."

    Dim shell
    Set shell = CreateObject("WScript.Shell")

    ' ������ ���� � ��襬� .bat 䠩��
    Dim batFilePath
    batFilePath = "C:\path\to\your\script.bat"

    ' ����� .bat 䠩��
    shell.Run batFilePath, 1, True

    ' �᢮�������� ��ꥪ�
    Set shell = Nothing
Else
    MsgBox "�� ��ࠫ� �� �த������."
End If