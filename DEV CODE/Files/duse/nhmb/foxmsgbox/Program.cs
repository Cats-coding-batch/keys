using System;
using System.Runtime.InteropServices;

namespace FoxMsgBox
{
    class Program
    {
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
                // Показать справку если нет аргументов
                if (args.Length == 0)
                {
                    string helpMessage = "Usage: FoxmsgBox [-esc:X] message caption [flags...] [timeout]\n\n" +
                                        "Options:\n" +
                                        "-esc:X\tSet escape character (default: \\)\n\n" +
                                        "Flags:\n" +
                                        "• Icons: Information, Question, Warning, Error\n" +
                                        "• Buttons: OkCancel, RetryCancel, YesNo, YesNoCancel, AbortRetryIgnore, CancelTryContinue, NoButtons\n" +
                                        "• Default buttons: DefButton1-4\n" +
                                        "• Timeout: number (seconds)" +
                                        "• Сделано при поддержки CatsCodingBatch yeeee";
                    MessageBoxTimeout(
                        IntPtr.Zero,
                        helpMessage,
                        "Help",
                        0x40, // MB_ICONINFORMATION
                        0,
                        0xFFFFFFFF); // Бесконечный таймаут
                    return 0;
                }

                string escapeChar = "\\";
                string message = "";
                string caption = "";
                uint flags = 0;
                uint timeout = 0xFFFFFFFF;
                int argIndex = 0;

                if (args.Length > 0 && args[0].StartsWith("-esc:"))
                {
                    escapeChar = args[0].Substring(5);
                    argIndex++;
                }

                if (args.Length - argIndex < 2)
                {
                    Console.WriteLine("Недостаточно аругументов дебил!");
                    return -1;
                }

                message = args[argIndex].Replace(escapeChar + "n", "\n").Replace(escapeChar + "t", "\t");
                caption = args[argIndex + 1];

                for (int i = argIndex + 2; i < args.Length; i++)
                {
                    string arg = args[i];
                    
                    if (arg == "Information") flags |= 0x40;
                    else if (arg == "Question") flags |= 0x20;
                    else if (arg == "Warning") flags |= 0x30;
                    else if (arg == "Error") flags |= 0x10;
                    
                    else if (arg == "OkCancel") flags |= 0x01;
                    else if (arg == "RetryCancel") flags |= 0x05;
                    else if (arg == "YesNo") flags |= 0x04;
                    else if (arg == "YesNoCancel") flags |= 0x03;
                    else if (arg == "AbortRetryIgnore") flags |= 0x02;
                    else if (arg == "CancelTryContinue") flags |= 0x06;
                    else if (arg == "NoButtons") flags |= 0x400;
                    
                    else if (arg == "DefButton1") flags |= 0x0;
                    else if (arg == "DefButton2") flags |= 0x100;
                    else if (arg == "DefButton3") flags |= 0x200;
                    else if (arg == "DefButton4") flags |= 0x300;
                    
                    else if (uint.TryParse(arg, out uint t)) timeout = t * 1000;
                }

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
                1 => 1,
                2 => 2,
                3 => 3,
                4 => 4,
                5 => 5,
                6 => 6,
                7 => 7,
                10 => 10,
                11 => 11,
                _ => -1
            };
        }
    }
}