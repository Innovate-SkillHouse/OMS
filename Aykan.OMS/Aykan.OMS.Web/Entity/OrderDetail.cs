using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Web.Entity
{
    public partial class OrderDetail
    {
        public Guid Id { get; set; }
        public int ProductId { get; set; }
        public int ShopkeeperId { get; set; }
        public Guid OrderId { get; set; }
        public decimal Mrp { get; set; }
        public decimal Msp { get; set; }
        public decimal DiscountPrice { get; set; }
        public string Unit { get; set; }
        public int Quantity { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public int UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }

        public virtual OrderList Order { get; set; }
        public virtual Product Product { get; set; }
        public virtual ShopKeeper Shopkeeper { get; set; }
    }
}
