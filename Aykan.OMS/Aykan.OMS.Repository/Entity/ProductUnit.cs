using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class ProductUnit
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string Unit { get; set; }

        public virtual Product Product { get; set; }
    }
}
