using Aykan.OMS.Business;
using Aykan.OMS.Common.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aykan.OMS.Web.Controllers
{
    [Route("api/v1/Shop")]
    public class ShopController: ControllerBase
    {
        private readonly ShopBusiness _shopBusiness;

        public ShopController(ShopBusiness shopBusiness)
        {
            _shopBusiness = shopBusiness;
        }
       
        [HttpGet]
        public async Task<IActionResult> GetAll(int userId)
        {
            var shops = await this._shopBusiness.GetAllShops(userId);
            var shop= shops.Select(x => new { x.Id,x.Name,x.Address,x.IsDeleted});
            return Ok(shop);
        }
        [HttpGet]
        [Route("GetShopById")]
        public async Task<IActionResult> GetShopById(int shopId)
        {
            var shop = await this._shopBusiness.GetShopById(shopId);
            return Ok(shop);
        }
        [HttpPut]
        [Route("AddShop")]
        public IActionResult AddShop([FromBody] AddEditShopModel shopModel)
        {
            var status = _shopBusiness.AddShop(shopModel);
            return Ok(status);
        }
        [HttpPut]
        [Route("UpdateShop")]
        public async Task<IActionResult> UpdateShop([FromBody] AddEditShopModel shopModel)
        {
            await this._shopBusiness.UpdateShop(shopModel);
            return Ok();
        }

        [HttpDelete]

        [Route("DeleteShop")]
        public async Task<IActionResult> DeleteShop(int id)
        {
            var status = await _shopBusiness.DeleteShop(id);
            return Ok();
        }
    }
}
