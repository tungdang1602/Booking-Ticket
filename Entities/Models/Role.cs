using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Models
{
    public class Role
    {
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public List<User> Users { get; set; }
    }
}
