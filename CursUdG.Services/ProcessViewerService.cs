using System;
using model = CursUdG.Model;
using System.Linq;
using System.Diagnostics;
using System.Collections.Generic;

namespace CursUdG.Services
{
    public static class ProcessViewerService
    {
        public static List<model.Process> GetProcesses()
        {
            var processes = new List<model.Process>();

            var systemProcesses = from p in Process.GetProcesses()
                                  where p.Id != 0 && !string.IsNullOrEmpty(p.ProcessName)
                                  orderby p.StartTime descending
                                  select p;

            foreach (var p in systemProcesses)
            {
                try
                {
                    processes.Add(
                        new model.Process(
                            p.Id,
                            p.ProcessName,
                            p.MainModule?.ModuleName ?? "Not Found",
                            p.MainModule?.FileName ?? "Not Found",
                            p.TotalProcessorTime,
                            p.UserProcessorTime
                        )
                    );
                }
                catch (Exception e)
                {
                    Console.WriteLine($"{p.Id} Error: {e.Message} {e.InnerException?.Message}");
                }
            }

            return processes;
        }

        public static model.Process? GetProcess(int processId)
        {
            try
            {
                var p = Process.GetProcessById(processId);
                return new model.Process(
                    p.Id,
                    p.ProcessName,
                    p.MainModule?.ModuleName ?? "Not Found",
                    p.MainModule?.FileName ?? "Not Found",
                    p.TotalProcessorTime,
                    p.UserProcessorTime
                );
            }
            catch (Exception e)
            {
                Console.WriteLine($"Procés: {processId} Error: {e.Message} {e.InnerException?.Message}");
            }

            return null;
        }
    }
}
