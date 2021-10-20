using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Services.Interface
{
    public interface ICinemaComplexService
    {
        public Task<List<CinemaComplex>> GetAllCinemaComplex();
        public Task<CinemaComplex> GetCinemaComplex(int CinemaComplexId);
    }
}
