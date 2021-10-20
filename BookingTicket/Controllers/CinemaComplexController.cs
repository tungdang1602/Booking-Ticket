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
    public class CinemaComplexController : ControllerBase
    {
        private readonly ICinemaComplexService _cinemaComplexService;
        public CinemaComplexController(ICinemaComplexService cinemaComplexService)
        {
            _cinemaComplexService = cinemaComplexService;
        }
        [HttpGet]
        public async Task<IActionResult> GetAllCinemaComplex()
        {
            var cinemas = await _cinemaComplexService.GetAllCinemaComplex();
            return Ok(cinemas);
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetCinemaComplex(int id)
        {
            var cinemas = await _cinemaComplexService.GetCinemaComplex(id);
            return Ok(cinemas);
        }
    }
}
