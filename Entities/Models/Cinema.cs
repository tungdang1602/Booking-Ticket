using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class Cinema
    {
        public int CinemaId { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public int TotalSeats { get; set; }
        public int CinemaComplexId { get; set; }
        public CinemaComplex CinemaComplex { get; set; }
        public int CinemaSeatId { get; set; }
        public CinemaSeat CinemaSeat { get; set; }

        public List<CinemaInterest> CinemaInterests { get; set; }
    }
}
