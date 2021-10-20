using AutoMapper;
using DTOs.Input;
using Entities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookingTicket
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<MovieForCreate, Movie>();
            CreateMap<MovieForUpdate, Movie>();
            CreateMap<CinemaForCreate, Cinema>();
            CreateMap<CinemaForUpdate, Cinema>();

        }
    }
}
