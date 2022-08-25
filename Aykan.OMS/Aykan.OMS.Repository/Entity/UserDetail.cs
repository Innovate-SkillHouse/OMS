using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class UserDetail
    {
        public UserDetail()
        {
            Users = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int MobileNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string UserCode { get; set; }
        public string Address { get; set; }

        public virtual ICollection<User> Users { get; set; }
    }
}
