using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Web.Entity
{
    public partial class Product
    {
        public Product()
        {
            OrderDetails = new HashSet<OrderDetail>();
            ProductUnits = new HashSet<ProductUnit>();
        }

        public int Id { get; set; }
        public int ProductTypeId { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }
        public string UnitWeight { get; set; }
        public int Quantity { get; set; }
        public decimal Mrp { get; set; }
        public decimal? Msp { get; set; }

        public virtual ProductType ProductType { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual ICollection<ProductUnit> ProductUnits { get; set; }
    }
}
