using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class Ticket
    {
        public int TicketId { get; set; }
        public string Row { get; set; }
        public int Column { get; set; }
        public Decimal Price { get; set; }
        public int BookingId { get; set; }
        public Booking Booking { get; set; }
    }
}
