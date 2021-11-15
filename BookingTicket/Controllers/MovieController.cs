using DTOs.Input;
using Entities.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Services.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ViewModels.Catalog.Movie;

namespace BookingTicket.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieController : ControllerBase
    {
        private readonly IMovieService _movieService;
        public MovieController(IMovieService movieService)
        {
            _movieService = movieService;
        }
        [AllowAnonymous]
        [HttpGet]
        public async Task<IActionResult> GetAllMovies([FromQuery] GetMoviePagingRequest request)
        {
            var movies = await _movieService.GetAllMovie(request);
            return Ok(movies);
        }
        [AllowAnonymous]
        [HttpGet("movie/nowshowing")]
        public async Task<IActionResult> GetMovieNowShowing()
        {
            var movies = await _movieService.GetMovieNowShowing();
            return Ok(movies);
        }
        [AllowAnonymous]
        [HttpGet("movie/comingsoon")]
        public async Task<IActionResult> GetMovieComingSoon()
        {
            var movies = await _movieService.GetMovieComingSoon();
            return Ok(movies);
        }
        [AllowAnonymous]
        [HttpGet("{id}")]
        public async Task<IActionResult> GetMovie(int id)
        {

            return Ok(await _movieService.GetMovie(id));
        }
        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> AddMovie(MovieForCreate movie)
        {
            return Ok(await _movieService.AddMovie(movie));
        }

        [AllowAnonymous]
        [HttpPut]
        public async Task<IActionResult> UpdateMovie(MovieForUpdate movie)
        {
            
            return Ok(await _movieService.UpdateMovie(movie));
        }
        [AllowAnonymous]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMovie(int id)
        {
            return Ok(await _movieService.DeleteMovie(id));
        }
    }
}
