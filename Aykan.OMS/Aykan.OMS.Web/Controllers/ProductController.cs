using Aykan.OMS.Business;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aykan.OMS.Web.Controllers
{
    [Route("api/v1/Product")]
    public class ProductController : ControllerBase
    {
        private readonly ProductBusiness _productBusiness;
        public ProductController(ProductBusiness productBusiness)
        {
            _productBusiness = productBusiness;
        }

        [HttpGet]
        public async Task<IActionResult> GetProductsByCategory(int categoryId)
        {
            var products = await this._productBusiness.GetProductsByCategory(categoryId);
            return Ok(products);
        }

        [HttpGet]
        [Route("GetAllProduct")]
        public async Task<IActionResult> GetAllProduct()
        {
            var products = await this._productBusiness.GetAllProduct();
            return Ok(products);
        }

        [HttpGet]
        [Route("GetAllCategories")]
        public async Task<IActionResult> GetAllCategories()
        {
            var catrgories = await this._productBusiness.GetAllCategories();
            return Ok(catrgories);
        }

    }
}
