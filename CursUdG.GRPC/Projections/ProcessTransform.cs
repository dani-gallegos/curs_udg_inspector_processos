using System.Globalization;
using model = CursUdG.Model;
using proto = CursUdG.GRPC.Protos;

namespace CursUdG.GRPC.Projections
{
    public static class ProcessProjections
    {
        public static proto.ProcessDto ToDto(this model.Process process)
        {
            return new proto.ProcessDto
            {
                Id = process.Id,
                Name = process.Name,
                FileName = process.FileName,
            };
        }

        public static proto.ProcessDetailDto ToDetailDto(this model.Process process)
        {
            return new proto.ProcessDetailDto
            {
                Id = process.Id,
                Name = process.Name,
                FileName = process.FileName,
                ModuleName = process.ModuleName,
                TotalProcessorTime = Google.Protobuf.WellKnownTypes.Duration.FromTimeSpan(process.TotalProcessorTime),
                UserProcessorTime = Google.Protobuf.WellKnownTypes.Duration.FromTimeSpan(process.UserProcessorTime),
            };
        }
    }
}
