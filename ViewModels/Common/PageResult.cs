using System;
using System.Collections.Generic;
using System.Text;

namespace ViewModels.Common
{
    public class PageResult<T>
    {
        public List<T> Items { set; get; }
        public int TotalRecord { set; get; }
    }
}
