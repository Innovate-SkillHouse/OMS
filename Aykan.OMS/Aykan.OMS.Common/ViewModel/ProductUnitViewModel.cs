using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json.Serialization;

namespace Aykan.OMS.Common.ViewModel
{
   public class ProductUnitViewModel
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string Unit { get; set; }

        [JsonIgnore]
        public ProductViewModel Product { get; set; }
    }
}
