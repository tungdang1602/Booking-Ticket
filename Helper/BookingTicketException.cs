using System;
using System.Collections.Generic;
using System.Text;

namespace Helper
{
    public class BookingTicketException : RankException
    {
        public BookingTicketException()
        {

        }
        public BookingTicketException(string message) : base(message)
        {

        }
        public BookingTicketException(string message, RankException inner) : base(message, inner)
        {

        }
    }
}
