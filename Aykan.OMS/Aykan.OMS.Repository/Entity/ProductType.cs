using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class ProductType
    {
        public ProductType()
        {
            ProductTranslations = new HashSet<ProductTranslation>();
            Products = new HashSet<Product>();
        }

        public int Id { get; set; }
        public string ProductType1 { get; set; }
        public string Description { get; set; }

        public virtual ICollection<ProductTranslation> ProductTranslations { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
