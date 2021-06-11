using System;

namespace CursUdG.Model
{
    public class Process
    {
        public Process(
            int id,
            string name,
            string moduleName,
            string fileName,
            TimeSpan totalProcessorTime,
            TimeSpan userProcessorTime)
        {
            Id = id;
            Name = name;
            ModuleName = moduleName;
            FileName = fileName;
            TotalProcessorTime = totalProcessorTime;
            UserProcessorTime = userProcessorTime;
        }

        public int Id { get; }
        public string Name { get; }
        public string ModuleName { get; }
        public string FileName { get; }
        public TimeSpan TotalProcessorTime { get; }
        public TimeSpan UserProcessorTime { get; }

        public void Kill(){
            System.Diagnostics.Process.GetProcessById(Id).Kill();
        }
    }
}
