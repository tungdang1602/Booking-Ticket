using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Data.Interface
{
    public interface IAuthRepository
    {
        public Task<bool> IsEmailExist(string email);
        public Task<User> GetUser(string email);
        public Task<User> GetUserById(int userId);

        public void CreateUser(User user);
        public Task<List<User>> GetAllUser();
        public void UpdateUser(User user);
        public Task<int> SaveChangeAsync();
    }
}
