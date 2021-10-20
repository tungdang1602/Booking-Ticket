using System;
using System.Collections.Generic;
using System.Text;
using ViewModels.Common;

namespace ViewModels.Catalog.Movie
{
    public class GetMoviePagingRequest : PageRequestBase
    {
        public string Keyword { get; set; }
    }
}
