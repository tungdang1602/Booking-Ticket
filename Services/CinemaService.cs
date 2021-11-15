using AutoMapper;
using Data.Repository;
using DTOs.Input;
using Entities.Models;
using Services.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class CinemaService : ICinemaService
    {
        private readonly ICinemaRepository _cinemaRepository;
        private readonly IMapper _mapper;
        public CinemaService(ICinemaRepository cinemaRepository, IMapper mapper)
        {
            _mapper = mapper;
            _cinemaRepository = cinemaRepository;
        }
        public async Task<int> AddCinema(CinemaForCreate cinemaForCreate)
        {
            var cinema = _mapper.Map<Cinema>(cinemaForCreate);
            return await _cinemaRepository.AddCinema(cinema);
        }

        public async Task<int> DeleteCinema(int CinemaId)
        {
            return await _cinemaRepository.DeleteCinema(CinemaId);
        }

        public async Task<Cinema> GetCinema(int CinemaId)
        {
            return await _cinemaRepository.GetCinema(CinemaId);
        }

        public async Task<List<Cinema>> GetCinemaInComplex(int cinemacpId)
        {
            return await _cinemaRepository.GetCinemaInComplex(cinemacpId);
        }

        public async Task<int> UpdateCinema(CinemaForUpdate cinemaForUpdate)
        {
            var cinema = _mapper.Map<Cinema>(cinemaForUpdate);
            return await _cinemaRepository.UpdateCinema(cinema);
        }
    }
}
