using AutoMapper;
using Data.Repository;
using DTOs.Input;
using Entities.Models;
using Services.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using ViewModels.Catalog.Movie;
using ViewModels.Common;

namespace Services
{
    public class MovieService : IMovieService
    {
        private readonly IMovieRepository _movieRepository;
        private readonly IMapper _mapper;
        public MovieService(IMovieRepository movieRepository, IMapper mapper)
        {
            _mapper = mapper;
            _movieRepository = movieRepository;
        }
        public async Task<int> AddMovie(MovieForCreate movieForCreate)
        {
            var movie = _mapper.Map<Movie>(movieForCreate);
            return await _movieRepository.AddMovie(movie);
        }

        public async Task<int> DeleteMovie(int MovieId)
        {
            return await _movieRepository.DeleteMovie(MovieId);
        }

        public async Task<List<Movie>> GetAllMovie(GetMoviePagingRequest request)
        {
            return await _movieRepository.GetAllMovie(request);
        }

        public async Task<Movie> GetMovie(int MovieId)
        {
            return await _movieRepository.GetMovie(MovieId);
        }

        public async Task<List<Movie>> GetMovieNowShowing()
        {
            return await _movieRepository.GetMovieNowShowing();
        }

        public async Task<List<Movie>> GetMovieComingSoon()
        {
            return await _movieRepository.GetMovieComingSoon();
        }

        public async Task<int> UpdateMovie(MovieForUpdate movieForUpdate)
        {
            var movie = _mapper.Map<Movie>(movieForUpdate);
            return await _movieRepository.UpdateMovie(movie);
        }
    }
}
