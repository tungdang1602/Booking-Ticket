using Data.Repository;
using Entities.EF;
using Entities.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Repository
{
    public class CinemaComplexRepository : RepositoryBase<CinemaComplex>, ICinemaComplexRepository
    {
        public CinemaComplexRepository(BookingTicketDbContext context) : base(context)
        {

        }
        public async Task<List<CinemaComplex>> GetAllCinemaComplex()
        {
            var cinema = _context.CinemaComplices.Select(x => x);
            return await cinema.OrderBy(x => x.Name).ToListAsync();
        }

        public async Task<CinemaComplex> GetCinemaComplex(int CinemaComPlexId)
        {
            var cinema = await FindByCondition(x => x.CinemaComplexId.Equals(CinemaComPlexId)).SingleOrDefaultAsync();
            return cinema;
        }

    }
}
