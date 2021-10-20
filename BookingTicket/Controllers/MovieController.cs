using DTOs.Input;
using Entities.Models;
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
        [HttpGet]
        public async Task<IActionResult> GetAllMovies([FromQuery] GetMoviePagingRequest request)
        {
            var movies = await _movieService.GetAllMovie(request);
            return Ok(movies);
        }
        [HttpGet("/nowshowing")]
        public async Task<IActionResult> GetMovieIsPlaying()
        {
            var movies = await _movieService.GetMovieIsPlaying();
            return Ok(movies);
        }
        [HttpGet("movie/comingsoon")]
        public async Task<IActionResult> GetMovieUpComing()
        {
            var movies = await _movieService.GetMovieUpComing();
            return Ok(movies);
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetMovie(int id)
        {

            return Ok(await _movieService.GetMovie(id));
        }
        [HttpPost]
        public async Task<IActionResult> AddMovie(MovieForCreate movie)
        {
            return Ok(await _movieService.AddMovie(movie));
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateMovie(int id, [FromForm] MovieForUpdate movie)
        {
            if (id != movie.MovieId)
                return BadRequest();
            return Ok(await _movieService.UpdateMovie(movie));
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMovie(int id)
        {
            return Ok(await _movieService.DeleteMovie(id));
        }
    }
}
