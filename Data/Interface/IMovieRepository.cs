using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using ViewModels.Catalog.Movie;
using ViewModels.Common;

namespace Data.Repository
{
    public interface IMovieRepository
    {
        Task<PageResult<Movie>> GetAllMovie(GetMoviePagingRequest request);
        Task<Movie> GetMovie(int MovieId);
        Task<int> AddMovie(Movie movie);
        Task<int> DeleteMovie(int MovieId);
        Task<int> UpdateMovie(Movie movie);
        Task<List<Movie>> GetMovieIsPlaying();
        Task<List<Movie>> GetMovieUpComing();

    }
}
