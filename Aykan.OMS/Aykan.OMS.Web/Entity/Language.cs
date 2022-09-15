using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Web.Entity
{
    public partial class Language
    {
        public Language()
        {
            ProductTranslations = new HashSet<ProductTranslation>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<ProductTranslation> ProductTranslations { get; set; }
    }
}
