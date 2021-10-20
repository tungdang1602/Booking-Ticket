using System;
using System.Collections.Generic;
using System.Text;

namespace DTOs.Input
{
    public class CinemaForCreate
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public int TotalSeats { get; set; }
        public int CinemaComplexId { get; set; }
        public int CinemaSeatId { get; set; }
    }
}
