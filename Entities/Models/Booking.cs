using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class Booking
    {
        public int BookingId { get; set; }
        public DateTime BookingTime { get; set; }
        public Decimal TotalPrice { get; set; }
        public int UserId { get; set; }
        public int CinemaInterestId { get; set; }

        public CinemaInterest CinemaInterest { get; set; }
        public User User { get; set; }
        public List<Ticket> Tickets { get; set; }
    }
}
