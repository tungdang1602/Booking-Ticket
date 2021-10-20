using DTOs.Input;
using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using ViewModels.Catalog.Movie;
using ViewModels.Common;

namespace Services.Interface
{
    public interface IMovieService
    {
        public Task<PageResult<Movie>> GetAllMovie(GetMoviePagingRequest request);
        public Task<Movie> GetMovie(int MovieId);
        public Task<int> AddMovie(MovieForCreate movieForCreate);
        public Task<int> DeleteMovie(int MovieId);
        public Task<int> UpdateMovie(MovieForUpdate movieForUpdate);
        public Task<List<Movie>> GetMovieIsPlaying();
        public Task<List<Movie>> GetMovieUpComing();

    }
}
