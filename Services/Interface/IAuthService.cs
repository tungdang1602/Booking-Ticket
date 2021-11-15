using DTOs.Input;
using Entities.Models;
using Helper;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Services.Interface
{
    public interface IAuthService
    {
        public Task<EnumStatusCode> Register(UserForCreate userForCreate);
        public Task<User> IsLoginValid(LoginDTO loginDTO);
        public Task UpdateUser(User user);
        public Task<User> GetUser(string email);
        public Task<User> GetUserById(int userId);

        public Task<List<User>> GetAllUser();
    }
}
