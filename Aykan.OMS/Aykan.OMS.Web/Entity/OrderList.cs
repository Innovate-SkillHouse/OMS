using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Web.Entity
{
    public partial class OrderList
    {
        public OrderList()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public Guid Id { get; set; }
        public int OrderCompletedBy { get; set; }
        public DateTime OrderCompletedOn { get; set; }
        public bool IsOrderCompleted { get; set; }
        public string OrderNo { get; set; }
        public string Note { get; set; }
        public bool IsDeleted { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
