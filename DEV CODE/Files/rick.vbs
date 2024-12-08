Set WshShell = CreateObject("WScript.Shell")

Do
    ' Запускаем rick.bat в скрытом режиме
    WshShell.Run "rick.bat", 0, True
    ' Ждем 1 секунду перед повторным запуском
    WScript.Sleep 1000
Loop