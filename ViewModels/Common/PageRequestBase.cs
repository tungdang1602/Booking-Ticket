﻿using System;
using System.Collections.Generic;
using System.Text;

namespace ViewModels.Common
{
    public class PageRequestBase
    {
        public int PageIndex { get; set; }
        public int PageSize { get; set; }
    }
}
