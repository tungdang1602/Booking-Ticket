using AutoMapper;
using DTOs.Input;
using DTOs.Output;
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
            CreateMap<UserForCreate, User>();
            CreateMap<User, UserForView>()
                .ForMember(x => x.Role, opt => opt.MapFrom(x => x.Role.RoleName));
            CreateMap<MovieForCreate, Movie>();
            CreateMap<MovieForUpdate, Movie>();
            CreateMap<CinemaForCreate, Cinema>();
            CreateMap<CinemaForUpdate, Cinema>();

        }
    }
}
