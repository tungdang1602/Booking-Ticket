using System;
using System.Collections.Generic;
using System.Text;

namespace DTOs.Input
{
    public class CinemaForUpdate
    {
        public int CinemaId { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public int TotalSeats { get; set; }
        public int CinemaComplexId { get; set; }
        public int CinemaSeatId { get; set; }
    }
}
