using Entities.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Data.Repository
{
    public interface ICinemaRepository
    {
        Task<Cinema> GetCinema(int CinemaId);
        Task<int> AddCinema(Cinema cinema);
        Task<int> DeleteCinema(int CinemaId);
        Task<int> UpdateCinema(Cinema cinema);
        Task<List<Cinema>> GetCinemaInComplex(int cinemacpId);
    }
}
