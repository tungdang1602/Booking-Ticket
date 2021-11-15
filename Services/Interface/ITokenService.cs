using Entities.Models;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Text;

namespace Services.Interface
{
    public interface ITokenService
    {
        public string CreateRefreshToken();
        public string CreateAccessToken(User user);
        public ClaimsPrincipal GetPrincipalFromExpiredToken(string token);
    }
}
