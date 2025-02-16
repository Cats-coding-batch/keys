using System;
using System.Runtime.InteropServices;

namespace NHMB
{
    class Program
    {
        // Импорт функции для MessageBox с таймаутом
        [DllImport("user32.dll", SetLastError = true)]
        public static extern int MessageBoxTimeout(
            IntPtr hWnd, 
            string text, 
            string title, 
            uint type, 
            ushort wLanguageId, 
            uint timeout);

        static int Main(string[] args)
        {
            try
            {
                string escapeChar = "\\";
                string message = "";
                string caption = "";
                uint flags = 0;
                uint timeout = 0xFFFFFFFF;
                int argIndex = 0;

                // Обработка параметра -esc
                if (args.Length > 0 && args[0].StartsWith("-esc:"))
                {
                    escapeChar = args[0].Substring(5);
                    argIndex++;
                }

                // Проверка минимального количества аргументов
                if (args.Length - argIndex < 2)
                {
                    Console.WriteLine("Недостаточно параметров!");
                    return -1;
                }

                message = args[argIndex].Replace(escapeChar + "n", "\n").Replace(escapeChar + "t", "\t");
                caption = args[argIndex + 1];
                
                // Обработка флагов
                for (int i = argIndex + 2; i < args.Length; i++)
                {
                    string arg = args[i];
                    
                    // Иконки
                    if (arg == "Information") flags |= 0x40; // MB_ICONINFORMATION
                    else if (arg == "Question") flags |= 0x20; // MB_ICONQUESTION
                    else if (arg == "Warning") flags |= 0x30; // MB_ICONWARNING
                    else if (arg == "Error") flags |= 0x10; // MB_ICONERROR
                    
                    // Кнопки
                    else if (arg == "OkCancel") flags |= 0x01; // MB_OKCANCEL
                    else if (arg == "RetryCancel") flags |= 0x05; // MB_RETRYCANCEL
                    else if (arg == "YesNo") flags |= 0x04; // MB_YESNO
                    else if (arg == "YesNoCancel") flags |= 0x03; // MB_YESNOCANCEL
                    else if (arg == "AbortRetryIgnore") flags |= 0x02; // MB_ABORTRETRYIGNORE
                    else if (arg == "CancelTryContinue") flags |= 0x06; // MB_CANCELTRYCONTINUE
                    else if (arg == "NoButtons") flags |= 0x400; // MB_USERICON
                    
                    // Кнопка по умолчанию
                    else if (arg == "DefButton1") flags |= 0x0; // MB_DEFBUTTON1
                    else if (arg == "DefButton2") flags |= 0x100; // MB_DEFBUTTON2
                    else if (arg == "DefButton3") flags |= 0x200; // MB_DEFBUTTON3
                    else if (arg == "DefButton4") flags |= 0x300; // MB_DEFBUTTON4
                    
                    // Таймаут
                    else if (uint.TryParse(arg, out uint t)) timeout = t * 1000;
                }

                // Вызов диалога
                int result = MessageBoxTimeout(
                    IntPtr.Zero,
                    message,
                    caption,
                    flags,
                    0,
                    timeout);

                return ConvertResult(result);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка: {ex.Message}");
                return -1;
            }
        }

        static int ConvertResult(int result)
        {
            return result switch
            {
                1 => 1,   // IDOK
                2 => 2,   // IDCANCEL
                3 => 3,   // IDABORT
                4 => 4,   // IDRETRY
                5 => 5,   // IDIGNORE
                6 => 6,   // IDYES
                7 => 7,   // IDNO
                10 => 10, // IDTRYAGAIN
                11 => 11, // IDCONTINUE
                _ => -1
            };
        }
    }
}