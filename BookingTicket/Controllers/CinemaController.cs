using DTOs.Input;
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
    public class CinemaController : ControllerBase
    {
        private readonly ICinemaService _cinemaService;
        public CinemaController(ICinemaService cinemaService)
        {
            _cinemaService = cinemaService;
        }
        [AllowAnonymous]
        [HttpGet("{id}")]
        public async Task<IActionResult> GetMovie(int id)
        {

            return Ok(await _cinemaService.GetCinema(id));
        }
        [AllowAnonymous]
        [HttpGet("(CinemaComplex)/{id}")]
        public async Task<IActionResult> GetCinemaInComplex(int id)
        {

            return Ok(await _cinemaService.GetCinemaInComplex(id));
        }
        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> AddCinema(CinemaForCreate cinemaForCreate)
        {
            return Ok(await _cinemaService.AddCinema(cinemaForCreate));
        }
        [AllowAnonymous]
        [HttpPut]
        public async Task<IActionResult> UpdateCinema(CinemaForUpdate cinema)
        {
            return Ok(await _cinemaService.UpdateCinema(cinema));
        }
        [AllowAnonymous]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCinema(int id)
        {
            return Ok(await _cinemaService.DeleteCinema(id));
        }
    }
}
