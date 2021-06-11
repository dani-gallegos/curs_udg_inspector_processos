using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using CursUdG.GRPC.Protos;
using Microsoft.Extensions.Logging;
using CursUdG.Services;
using CursUdG.GRPC.Projections;
using Grpc.Core;

namespace CursUdG.GRPC.GRPCServices
{
    public class ProcessViewerGRPCService : ProcessViewer.ProcessViewerBase
    {
        private readonly ILogger<ProcessViewerGRPCService> _logger;
        public ProcessViewerGRPCService(ILogger<ProcessViewerGRPCService> logger)
        {
            _logger = logger;
        }

        public override async Task<ListResponse> List(ListRequest request, Grpc.Core.ServerCallContext context)
        {
            var processes = ProcessViewerService.GetProcesses();
            var response = new ListResponse();
            foreach (var proces in processes)
                response.Items.Add(proces.ToDto());
            //await Task.Delay(2500);
            return await Task.FromResult(response);
        }

        public override async Task<GetResponse> Get(GetRequest request, ServerCallContext context)
        {
            var process = ProcessViewerService.GetProcess(request.Id);
            if(process==null) return await Task.FromResult(new GetResponse { Found = false });
            return await Task.FromResult(new GetResponse { Found = true, Item = process.ToDetailDto() });
        }

        public override async  Task<KillResponse> Kill(KillRequest request, ServerCallContext context)
        {
            try{
                var process = ProcessViewerService.GetProcess(request.Id);
                if(process == null) return await Task.FromResult(new KillResponse { Result = false });
                process.Kill();
                return await Task.FromResult(new KillResponse { Result = true });
            }
            catch
            {
                return await Task.FromResult(new KillResponse { Result = false });
            }
        }

    }
}
