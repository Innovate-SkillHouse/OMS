using Aykan.OMS.Business;
using Aykan.OMS.Common.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aykan.OMS.Web.Controllers
{

    [Route("api/v1/Order")]
    public class OrderController : ControllerBase
    {
        private readonly OrderBusiness _orderBusiness;
        public OrderController(OrderBusiness orderBusiness)
        {
            _orderBusiness = orderBusiness;
        }

        [HttpGet]
        [Route("GetOrderCountForWholeSaler")]
        public async Task<IActionResult> GetOrderCountForWholeSaler(string selectedOrderDate,int selectedShopkeeperId, string selectedStatus)
        {
            int orderCount = await this._orderBusiness.GetOrderCountForWholeSaler(selectedOrderDate,selectedShopkeeperId, selectedStatus);
            return Ok(orderCount);
        }

        [HttpGet]
        public async Task<IActionResult> GetAllOrdersForWholeSaler(int currentPageIndex, bool isSortAscending,string selectedOrderDate, int selectedShopkeeperId, string selectedStatus)
        {
            var orders = await this._orderBusiness.GetAllOrders(currentPageIndex, isSortAscending, selectedOrderDate, selectedShopkeeperId, selectedStatus);
            return Ok(orders);
        }

        //[HttpGet]
        //[Route("GetOrdersByOrderStatus")]
        //public async Task<JsonResult> GetOrdersByOrderStatus(string isOrderCompletedValue, int currentPageIndex, int selectedShopkeeperId, bool isSortAscending)
        //{
        //    var orders = await this._orderBusiness.GetOrdersByOrderStatus(isOrderCompletedValue, currentPageIndex, selectedShopkeeperId, isSortAscending);
        //    var count = await this._orderBusiness.GetOrderCount(selectedShopkeeperId, isOrderCompletedValue);
        //    return new JsonResult(new { orders, count });
        //}

        //[HttpGet]
        //[Route("GetOrdersByShopkeeperId")]
        //public async Task<JsonResult> GetOrdersByShopkeeperId(int shopKeeperId, int currentPageIndex, string selectedStatus, bool isSortAscending)
        //{
        //    var orders = await this._orderBusiness.GetOrdersByShopkeeperId(shopKeeperId, currentPageIndex, selectedStatus, isSortAscending);
        //    var count = await this._orderBusiness.GetOrderCount(shopKeeperId, selectedStatus);
        //    return new JsonResult(new { orders, count });
        //}

        [HttpGet]
        [Route("GetAllOrdersForSalesmen")]
        public async Task<IActionResult> GetAllOrdersForSalesmen(int currentPageIndex, int shopId, string orderDate,int userId)
        {
            var orders = await this._orderBusiness.GetAllOrdersForSalesmen(currentPageIndex, shopId, orderDate, userId);
            return Ok(orders);
        }

        [HttpGet]
        [Route("GetOrderCountForSalesmen")]
        public async Task<IActionResult> GetOrderCountForSalesmen(int shopId,string orderDate, int userId)
        {
            int orderCount = await this._orderBusiness.GetOrderCountForSalesmen(shopId, orderDate, userId);
            return Ok(orderCount);
        }

        [HttpGet]
        [Route("GetOrderDetail")]
        public async Task<IActionResult> GetOrderDetail(Guid orderDetailedId)
        {
            try
            {
                var catrgories = await this._orderBusiness.GetOrderDetail(orderDetailedId);
                return Ok(catrgories);
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        

        [HttpGet]
        [Route("GetOrderListById")]
        public async Task<IActionResult> GetOrderListById(Guid orderListId)
        {
            try
            {
                var categories = await this._orderBusiness.GetOrderListById(orderListId);
                return Ok(categories);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPut]
        [Route("CreateOrderDetail")]
        public  async Task<IActionResult> CreateOrderDetail([FromBody] List<CartDetailViewModel> cartDetailViewModel, int userId, string note)
        {         
            await this._orderBusiness.CreateOrderDetail(cartDetailViewModel, userId, note);
            return Ok();                    
        }

        [HttpPut]
        [Route("UpdateOrderDetail")]
        public async Task<IActionResult> UpdateOrderDetail(List<OrderDetailViewModel> orderDetailViewModels, int userId)
        {            
            await this._orderBusiness.UpdateOrderDetail(orderDetailViewModels, userId);
            return Ok();
        }

        [HttpPost]
        [Route("ProcessOrder")]
        public async Task<IActionResult> ProcessOrder([FromBody] List<OrderDetailViewModel> orderDetail, Guid orderId)
        {
            await this._orderBusiness.ProcessOrder(orderDetail, orderId);
            return Ok();

        }

        [HttpPost]
        [Route("UpdateOrder")]
        public async Task<IActionResult> UpdateOrder([FromBody] List<OrderDetailViewModel> orderDetail, string note)
        {
            await this._orderBusiness.UpdateOrder(orderDetail, note);
            return Ok();
        }

        [HttpPost]
        [Route("CancelOrder")]
        public async Task<IActionResult> CancelOrder(Guid orderId)
        {
            await this._orderBusiness.CancelOrder(orderId);
            return Ok();
        }
    }
}
