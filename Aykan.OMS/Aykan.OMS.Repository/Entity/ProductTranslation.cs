using System;
using System.Collections.Generic;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class ProductTranslation
    {
        public int Id { get; set; }
        public int LanguageId { get; set; }
        public int? ProductId { get; set; }
        public int? ProductTypeId { get; set; }
        public string ProductName { get; set; }

        public virtual Language Language { get; set; }
        public virtual ProductType Product { get; set; }
    }
}
