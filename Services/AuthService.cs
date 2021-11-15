using AutoMapper;
using Data.Interface;


using Services.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using System.Threading.Tasks;
using Entities.Models;
using DTOs.Input;
using Helper;

namespace Services
{
    public class AuthService : IAuthService
    {
        private readonly IAuthRepository _authRepository;
        private readonly IMapper _mapper;
        public AuthService(IAuthRepository authRepository, IMapper mapper)
        {
            _authRepository = authRepository;
            _mapper = mapper;
        }

        public async Task<List<User>> GetAllUser()
        {
            return await _authRepository.GetAllUser();
        }

        public async Task<User> GetUser(string email)
        {
            return await _authRepository.GetUser(email);
        }

        public async Task<User> GetUserById(int userId)
        {
            return await _authRepository.GetUserById(userId);
        }

        public async Task<User> IsLoginValid(LoginDTO loginDTO)
        {
            var user = await _authRepository.GetUser(loginDTO.Email);
            if (user == null || !Hash.Validate(loginDTO.Password, user.PasswordSalt, user.Password))
                return null;
            return user;
        }

        public async Task<EnumStatusCode> Register(UserForCreate userForCreate)
        {
            if (await _authRepository.IsEmailExist(userForCreate.Email))
                return EnumStatusCode.EmailExist;

            var user = _mapper.Map<User>(userForCreate);
            user.PasswordSalt = Salt.Create();
            user.Password = Hash.Create(userForCreate.Password, user.PasswordSalt);
            user.RoleId = 1;

            _authRepository.CreateUser(user);
            await _authRepository.SaveChangeAsync();
            return EnumStatusCode.OK;
        }

        public async Task UpdateUser(User user)
        {
            _authRepository.UpdateUser(user);
            await _authRepository.SaveChangeAsync();
        }
    }
}
