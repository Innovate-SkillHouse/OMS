using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.ViewModel
{
    public class AddEditShopModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string MobileNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string IsDeleted { get; set; }
        public int CreatedBy { get; set; }

    }
}
