using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class CinemaInterest
    {
        public int CinemaInterestId { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public Decimal Price { get; set; }
        public int MovieId { get; set; }
        public Movie Movie { get; set; }
        public int CinemaId { get; set; }
        public Cinema Cinema { get; set; }
        public List<Booking> Bookings { get; set; }    
    }
}
