using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class Order
    {
        public Guid Id { get; set; }
        public string OrderId { get; set; }
        public Guid OrderDetailId { get; set; }
        public int OrderCompletedBy { get; set; }
        public DateTime OrderCompletedOn { get; set; }
        public bool IsOrderCompleted { get; set; }
        public bool IsDeleted { get; set; }

    public virtual OrderDetail OrderDetail { get; set; }
    }
}
