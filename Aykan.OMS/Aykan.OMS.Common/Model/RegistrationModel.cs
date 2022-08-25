using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.Model
{
    public class RegistrationModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string MobileNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string UserCode { get; set; }
        public string Address { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdatedOn { get; set; }

        public int RegisterType { get; set; }
    }
}
