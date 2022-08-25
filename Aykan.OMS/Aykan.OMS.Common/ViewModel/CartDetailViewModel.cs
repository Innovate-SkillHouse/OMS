using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Common.ViewModel
{
    public class CartDetailViewModel
    {

        public int CategoryId { get; set; }
        public int ShopkeeperId { get; set; }
        public string CategoryName { get; set; }
        public List<ProductViewModel> Product{ get; set; }
    }
}
