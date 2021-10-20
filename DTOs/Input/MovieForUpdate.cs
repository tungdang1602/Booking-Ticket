using System;
using System.Collections.Generic;
using System.Text;

namespace DTOs.Input
{
    public class MovieForUpdate
    {
        public int MovieId { get; set; }
        public string Name { get; set; }
        public string Directors { get; set; }
        public string Casts { get; set; }
        public string Summary { get; set; }
        public DateTime PremiereDate { get; set; }
        public string Poster { get; set; }
        public string Trailer { get; set; }
        public int MovieDuration { get; set; }
    }
}
