using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Data.Repository
{
    public interface ICinemaComplexRepository
    {
        Task<List<CinemaComplex>> GetAllCinemaComplex();
        Task<CinemaComplex> GetCinemaComplex(int CinemaComPlexId);
    }
}
