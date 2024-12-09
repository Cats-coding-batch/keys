Dim response
response = MsgBox("Вы хотите продолжить?", vbYesNo + vbQuestion, "Подтверждение")

If response = vbYes Then
    MsgBox "Вы выбрали продолжить."

    Dim shell
    Set shell = CreateObject("WScript.Shell")

    ' Укажите путь к вашему .bat файлу
    Dim batFilePath
    batFilePath = "C:\path\to\your\script.bat"

    ' Запуск .bat файла
    shell.Run batFilePath, 1, True

    ' Освобождение объекта
    Set shell = Nothing
Else
    MsgBox "Вы выбрали не продолжать."
End If