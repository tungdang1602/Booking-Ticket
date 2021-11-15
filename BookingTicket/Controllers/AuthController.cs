using AutoMapper;
using DTOs.Input;
using DTOs.Output;
using Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Services.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookingTicket.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuthService _authService;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;
        public AuthController(IAuthService authService, ITokenService tokenService, IMapper mapper)
        {
            _authService = authService;
            _tokenService = tokenService;
            _mapper = mapper;
        }
        [AllowAnonymous]
        [HttpPost("register")]
        public async Task<IActionResult> Register(UserForCreate userForCreate)
        {
            if (ModelState.IsValid)
            {
                var rs = await _authService.Register(userForCreate);
                if (rs == EnumStatusCode.EmailExist)
                {
                    ModelState.AddModelError("email", "Email đã được đăng ký");
                    return BadRequest(ModelState);
                }
                return Ok();
            }
            return BadRequest(ModelState);
        }

        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> Login(LoginDTO loginDTO)
        {
            if (ModelState.IsValid)
            {
                var user = await _authService.IsLoginValid(loginDTO);
                if (user == null)
                {
                    ModelState.AddModelError("password", "Username hoặc password không đúng");
                    return BadRequest(ModelState);
                }

                var accessToken = _tokenService.CreateAccessToken(user);
                var refreshToken = _tokenService.CreateRefreshToken();

                user.RefreshToken = refreshToken;
                user.RefreshTokenExpiryTime = DateTime.Now.AddDays(7);

                await _authService.UpdateUser(user);

                var userForView = _mapper.Map<UserForView>(user);
                return new ObjectResult(new
                {
                    user = userForView,
                    token = accessToken,
                    refreshToken = refreshToken
                });
            }
            return BadRequest(ModelState);
        }

        [AllowAnonymous]
        [HttpGet]
        public async Task<IActionResult> GetAllUsers()
        {
            var users = await _authService.GetAllUser();
            return Ok(users);
        }
        [AllowAnonymous]
        [HttpGet("{id}")]
        public async Task<IActionResult> GetUserById(int id)
        {
            var user = await _authService.GetUserById(id);
            return Ok(user);
        }


    }

}
