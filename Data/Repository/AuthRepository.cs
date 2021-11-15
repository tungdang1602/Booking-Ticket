using Data.Interface;
using Entities.EF;
using Entities.Models;
using Helper;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Repository
{
    public class AuthRepository : RepositoryBase<User>, IAuthRepository
    {
        public AuthRepository(BookingTicketDbContext context) : base(context)
        {
        }
        public void CreateUser(User user)
        {
            Create(user);
        }

        public async Task<List<User>> GetAllUser()
        {
            var user = _context.Users.Select(x => x);
            return await user.OrderBy(x => x.Name).ToListAsync();
        }

        public async Task<User> GetUser(string email)
        {
            var user = await FindByCondition(user => user.Email == email).FirstOrDefaultAsync();
            if (user != null)
                await _context.Entry(user).Reference(x => x.Role).LoadAsync();
            return user;
        }

        public async Task<User> GetUserById(int userId)
        {
            var user = await FindByCondition(user => user.UserId == userId).FirstOrDefaultAsync();
            if (user == null)
                throw new BookingTicketException($"Cannot find a {userId}");
            return user;
        }

        public async Task<bool> IsEmailExist(string email)
        {
            if (await FindByCondition(user => user.Email == email).FirstOrDefaultAsync() == null)
                return false;
            return true;
        }

        public  void UpdateUser(User user)
        {
            Update(user);
        }
    }
}
