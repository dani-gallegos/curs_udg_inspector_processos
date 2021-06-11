using System;
using CursUdG.Services;
using System.Diagnostics;

namespace CursUdG.Consola
{
    class Program
    {
        static void Main()
        {
            Process.Start(new ProcessStartInfo("clear"));

            var processes = ProcessViewerService.GetProcesses();        

            foreach(var p in processes)
            { 
                Console.WriteLine($"{p.Id} {p.Name} {p.ModuleName} {p.FileName}");
            }
            Console.ReadLine();
        }
    }
}
