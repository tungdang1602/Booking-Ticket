using Data.Repository;
using Entities.EF;
using Entities.Models;
using Helper;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Linq;

namespace Data.Repository
{
    public class CinemaRepository : RepositoryBase<Cinema>, ICinemaRepository
    {
        public CinemaRepository(BookingTicketDbContext context) : base(context)
        {

        }
        public async Task<int> AddCinema(Cinema cinema)
        {
            Create(cinema);
            return await SaveChangeAsync();
        }

        public async Task<int> DeleteCinema(int CinemaId)
        {
            var cinema = await FindByCondition(x => x.CinemaId.Equals(CinemaId)).SingleOrDefaultAsync();
            if (cinema == null)
                throw new BookingTicketException($"Cannot find a {CinemaId}");
            Delete(cinema);
            return await SaveChangeAsync();
        }

        public async Task<Cinema> GetCinema(int CinemaId)
        {
            var cinema = await FindByCondition(x => x.CinemaId.Equals(CinemaId)).SingleOrDefaultAsync();
            if (cinema == null)
                throw new BookingTicketException($"Cannot find a {CinemaId}");
            return cinema;
        }

        public async Task<List<Cinema>> GetCinemaInComplex(int cinemacpId)
        {
            var query = from cm in _context.Cinemas
                        where cinemacpId == cm.CinemaComplexId
                        select cm;
            return await query.OrderBy(x => x.CinemaId).ToListAsync();
        }

        public async Task<int> UpdateMovie(Cinema cinema)
        {
            Update(cinema);
            return await SaveChangeAsync();
        }
    }
}
