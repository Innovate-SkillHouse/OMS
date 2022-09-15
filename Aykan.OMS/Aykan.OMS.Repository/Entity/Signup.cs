using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class Signup
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public string Phoneno { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
