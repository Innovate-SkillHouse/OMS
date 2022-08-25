using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class ShopKeeper
    {
        public ShopKeeper()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string MobileNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public bool IsDeleted { get; set; }
        public int CreatedBy { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
