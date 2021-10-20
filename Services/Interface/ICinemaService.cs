using DTOs.Input;
using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Services.Interface
{
    public interface ICinemaService
    {
        public Task<Cinema> GetCinema(int CinemaId);
        public Task<int> AddCinema(CinemaForCreate cinemaForCreate);
        public Task<int> DeleteCinema(int CinemaId);
        public Task<int> UpdateCinema(CinemaForUpdate cinemaForUpdate);
        public Task<List<Cinema>> GetCinemaInComplex(int cinemacpId);
    }
}
