using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class CinemaSeat
    {
        public int CinemaSeatId { get; set; }
        public string Name { get; set; }
        public int TotalRow { get; set; }
        public int TotalColmn { get; set; }
        public List<Cinema> Cinemas { get; set; }
    }
}
