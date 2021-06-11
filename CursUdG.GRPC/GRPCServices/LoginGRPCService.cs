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
    public class LoginGRPCService : Authenticator.AuthenticatorBase
    {
        private readonly ILogger<LoginGRPCService> _logger;
        public LoginGRPCService(ILogger<LoginGRPCService> logger)
        {
            _logger = logger;
        }

        public override async Task<LoginResponse> Login(LoginRequest request, ServerCallContext context)
        {
            if (request.User == "dani" && request.Password == "1234")
                return await Task.FromResult(new LoginResponse { Valid = true, Token = "token_valid" });

            return await Task.FromResult(new LoginResponse { Valid = false });
        }

    }
}
