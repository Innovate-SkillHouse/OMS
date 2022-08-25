using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.ViewModel
{
    public class OrderListViewModel
    {
        public Guid Id { get; set; }
        public Guid OrderId { get; set; }
        public int OrderCompletedBy { get; set; }
        public DateTime OrderCompletedOn { get; set; }
        public bool IsOrderCompleted { get; set; }
        public string OrderNo { get; set; }
        public string Note { get; set; }
        public bool IsDeleted { get; set; }
        public List<OrderDetailViewModel> OrderDetails { get; set; }
    }
}
