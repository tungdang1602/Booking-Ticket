using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class CinemaComplex
    {
        public int CinemaComplexId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Image { get; set; }
        public List<Cinema> Cinemas { get; set; }
    }
}
