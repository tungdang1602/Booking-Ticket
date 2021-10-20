using Data.Repository;
using Entities.Models;
using Services.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class CinemaComplexService : ICinemaComplexService
    {
        private readonly ICinemaComplexRepository _cinemaComplexRepository;
        public CinemaComplexService(ICinemaComplexRepository cinemaComplexRepository)
        {
            _cinemaComplexRepository = cinemaComplexRepository;
        }
        public async Task<List<CinemaComplex>> GetAllCinemaComplex()
        {
            return await _cinemaComplexRepository.GetAllCinemaComplex();
        }

        public async Task<CinemaComplex> GetCinemaComplex(int CinemaComplexId)
        {
            return await _cinemaComplexRepository.GetCinemaComplex(CinemaComplexId);
        }
    }
}
