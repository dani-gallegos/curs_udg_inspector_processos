using System;
using System.Linq;
using System.Threading.Tasks;
using CursUdG.GRPC.Protos;
using Grpc.Core;
using Grpc.Core.Interceptors;
using Microsoft.Extensions.Logging;

namespace CursUdG.GRPC.Interceptors
{
    public class AuthInterceptor : Interceptor
    {
        private readonly ILogger<AuthInterceptor> _logger;

        public AuthInterceptor(ILogger<AuthInterceptor> logger)
        {
            _logger = logger;
        }

        public override async Task<TResponse> UnaryServerHandler<TRequest, TResponse>(
            TRequest request,
            ServerCallContext context,
            UnaryServerMethod<TRequest, TResponse> continuation)
        {
            _logger.LogInformation($"Unary Request, isLogin: {request is LoginRequest}");

            try
            {
                if(request is LoginRequest)
                    return await continuation(request, context);

                return await continuation(request, context);

                // var entry = context.RequestHeaders.Get("authorization");
                // if(entry == null) throw new Exception("Not authorized");
                // if(entry.Value == "token_valid") return await continuation(request, context);
                // throw new Exception("Not authorized");
            }
            catch (Exception ex)
            {
                // Note: The gRPC framework also logs exceptions thrown by handlers to .NET Core logging.
                _logger.LogError(ex, $"Error thrown by {context.Method}.");

                throw;
            }
        }

    }
}
