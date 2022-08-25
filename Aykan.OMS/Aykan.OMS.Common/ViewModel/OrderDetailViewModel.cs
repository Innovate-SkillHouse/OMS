using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.ViewModel
{
    public class OrderDetailViewModel
    {
        public Guid Id { get; set; }
        public int ProductId { get; set; }
        public int ShopkeeperId { get; set; }
        public Guid OrderId { get; set; }
        public int Quantity { get; set; }
        public decimal Mrp { get; set; }
        public decimal Msp { get; set; }
        public decimal DiscountPrice { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public int UpdatedBy { get; set; }
        public string Unit { get; set; }
        public DateTime UpdatedDate { get; set; }
        public ShopModel ShopKeeper { get; set; }
        public ProductViewModel Product{ get; set; }
    }
}
