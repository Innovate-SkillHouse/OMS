using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.ViewModel
{
   public class ProductViewModel
    {
        public int Id { get; set; }
        public int ProductTypeId { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }
        public string UnitWeight { get; set; }
        public int Quantity { get; set; }
        public decimal Mrp { get; set; }
        public decimal? Msp { get; set; }
        public ProductTypeViewModel ProductType { get; set; }
        public ProductUnitViewModel ProductUnit { get; set; }
    }
}
