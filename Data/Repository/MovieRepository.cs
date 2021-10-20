using Data.Repository;
using Entities.EF;
using Entities.Models;
using Helper;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ViewModels.Catalog.Movie;
using ViewModels.Common;

namespace Data.Repository
{
    public class MovieRepository : RepositoryBase<Movie>, IMovieRepository
    {
        public MovieRepository(BookingTicketDbContext context) : base(context)
        {

        }
        public async Task<int> AddMovie(Movie movie)
        {
            Create(movie);
            return await SaveChangeAsync();
        }

        public async Task<int> DeleteMovie(int MovieId)
        {
            var movie = await FindByCondition(x => x.MovieId.Equals(MovieId)).SingleOrDefaultAsync();
            if (movie == null) throw new BookingTicketException($"Cannot find a movie :{MovieId}");

            Delete(movie);
            return await SaveChangeAsync();
        }

        public async Task<PageResult<Movie>> GetAllMovie(GetMoviePagingRequest request)
        {
            var query = _context.Movies.Select(x => x);
            if (!string.IsNullOrEmpty(request.Keyword))
                query = query.Where(x => x.Name.Contains(request.Keyword));

            int totalRow = await query.CountAsync();
            var data = await query.Skip((request.PageIndex - 1) * request.PageSize)
                .Take(request.PageSize)
                .ToListAsync();

            var resultPage = new PageResult<Movie>()
            {
                TotalRecord = totalRow,
                Items = data,
            };
            return resultPage;

        }

        public async Task<Movie> GetMovie(int MovieId)
        {
            var movie = await FindByCondition(x => x.MovieId.Equals(MovieId)).SingleOrDefaultAsync();
            return movie;
        }

        public async Task<List<Movie>> GetMovieIsPlaying()
        {
            var date = DateTime.Now;
            var query = from m in _context.Movies
                        where date <= m.PremiereDate
                        select m;
            return await query.OrderBy(x => x.PremiereDate).ToListAsync();
        }

        public async Task<List<Movie>> GetMovieUpComing()
        {
            var date = DateTime.Now;
            var query = from m in _context.Movies
                        where date >= m.PremiereDate
                        select m;
            return await query.OrderBy(x => x.PremiereDate).ToListAsync();
        }

        public async Task<int> UpdateMovie(Movie movie)
        {
            Update(movie);
            return await SaveChangeAsync();
        }
    }
}
