using AutoMapper;
using Aykan.OMS.Common;
using Aykan.OMS.Common.Setting;
using Aykan.OMS.Common.ViewModel;
using Aykan.OMS.Repository.Entity;
using Aykan.OMS.Repository.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aykan.OMS.Business
{
    public class OrderBusiness
    {
        private readonly IRepository<OrderList> orderRepository;
        private readonly IRepository<OrderDetail> orderDetailRepository;
        private readonly IRepository<ShopKeeper> shopKeeperRepository;
        private readonly IRepository<ProductType> productTypeRepository;
        private readonly IRepository<Product> productRepository;
        private readonly IUnitOfWork unitOfWork;
        private AppSettings appSettings;
        private readonly IMapper _mapper;

        public OrderBusiness(IUnitOfWork unitOfWork, AppSettings appSettings, IMapper mapper,ApplicationContext applicationContext)
        {
            this.appSettings = appSettings;
            this.unitOfWork = unitOfWork;
            _mapper = mapper;
            this.orderRepository = unitOfWork.GetRepository<IRepository<OrderList>>();
            this.orderDetailRepository = unitOfWork.GetRepository<IRepository<OrderDetail>>();
            this.shopKeeperRepository = unitOfWork.GetRepository<IRepository<ShopKeeper>>();
            this.productTypeRepository = unitOfWork.GetRepository<IRepository<ProductType>>();
            this.productRepository = unitOfWork.GetRepository<IRepository<Product>>();
         }
        public async Task<int> GetOrderCountForWholeSaler(string selectedOrderDate, int selectedShopkeeperId, string selectedStatus)
        {
            List<OrderList> orderCount = new List<OrderList>();
            List<OrderList> totalOrders = new List<OrderList>();
            int numCount = 0;
            var orderDate = DateTime.Now;
            if (selectedOrderDate != null)
                orderDate = Convert.ToDateTime(selectedOrderDate);
            if (selectedShopkeeperId == 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != null))
            {
                if (string.IsNullOrEmpty(selectedStatus) && string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != null)
                {
                    if (string.IsNullOrEmpty(selectedOrderDate))
                    {
                        totalOrders = this.orderRepository.GetAll().Where(x => x.IsDeleted == false).ToList();
                    }
                    else
                    {
                        totalOrders = this.orderRepository.GetBy(x => x.IsDeleted == false && x.OrderCompletedOn.Date == orderDate.Date).ToList();
                    }
                    numCount = totalOrders.Distinct().Count();

                }
                else
                {
                    var shopKeeperList = this.shopKeeperRepository.GetAll().ToList();
                    foreach (var shopKeeper in shopKeeperList)
                    {
                        var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
                        var orderDetails = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopKeeper.Id).ToList();
                        foreach (var orderDetail in orderDetails)
                        {
                            if (string.IsNullOrEmpty(selectedOrderDate))
                            {
                                totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted);
                            }
                            else
                            {
                                totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted && x.OrderCompletedOn.Date == orderDate.Date);
                            }
                            foreach (var order in totalOrders)
                            {
                                if (order != null)
                                {
                                    orderCount.Add(order);
                                }
                            }
                        }
                    }

                    numCount = orderCount.Distinct().Count();
                }
            }
            else if (selectedShopkeeperId != 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != null) && (string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != null))
            {
                var shopKeeper = this.shopKeeperRepository.GetBy(x => x.Id == selectedShopkeeperId).FirstOrDefault();
                var orderDetails = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopKeeper.Id).ToList();
                foreach (var orderDetail in orderDetails)
                {
                    if (string.IsNullOrEmpty(selectedStatus) && (string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != null))
                    {
                        if (string.IsNullOrEmpty(selectedOrderDate))
                        {
                            totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false);
                        }
                        else
                        {
                            totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.OrderCompletedOn.Date == orderDate.Date);
                        }
                        foreach (var order in totalOrders)
                        {
                            if (order != null)
                            {
                                orderCount.Add(order);
                            }
                        }
                    }
                    else
                    {
                        var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
                        if (string.IsNullOrEmpty(selectedOrderDate))
                        {
                            totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted);
                        }
                        else
                        {
                            totalOrders = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted && x.OrderCompletedOn.Date == orderDate.Date);
                        }
                        foreach (var order in totalOrders)
                        {
                            if (order != null)
                            {
                                orderCount.Add(order);
                            }
                        }
                    }
                }
                numCount = orderCount.Distinct().Count();
            }
            return numCount;
        }
        public async Task<List<OrderListViewModel>> GetAllOrders(int currentPageIndex, bool isSortAscending, string selectedOrderDate,int selectedShopkeeperId, string selectedStatus)
        {
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> orderList = new List<OrderList>();
            var maxRows = 10; 
            var orderDate = DateTime.Now;
            if (selectedOrderDate != null)
                orderDate = Convert.ToDateTime(selectedOrderDate);
                if (selectedShopkeeperId == 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != "") && (string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != ""))
                {
                    if (string.IsNullOrEmpty(selectedStatus) &&(string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != ""))

                    {
                        if (string.IsNullOrEmpty(selectedOrderDate))
                        {
                            orderList = (await this.orderRepository.GetAllAsync(x => x.OrderDetails)).Where(x=>x.IsDeleted==false).OrderByDescending(x => x.OrderCompletedOn).ToList();
                        }
                        else
                        {
                         orderList = (await this.orderRepository.GetByAsync(x => x.OrderCompletedOn.Date== orderDate.Date && x.IsDeleted == false )).OrderByDescending(x => x.OrderCompletedOn).ToList();
                        }
                        foreach (var order in orderList)
                        {
                            var orderDetail = await this.orderDetailRepository.GetByAsync(x => x.OrderId == order.Id, x => x.Shopkeeper, x => x.Product.ProductType);
                        }
                        ord = orderList.Distinct().ToList();                 
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                        return _mapper.Map<List<OrderListViewModel>>(skiporders); 
                    }                    
                    else
                    {
                          var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
                    if (selectedStatus !=" " && (string.IsNullOrEmpty(selectedOrderDate) ))
                            return GetAllOrdersByShopIdAndIsCompletedOrder(currentPageIndex, maxRows, isSortAscending, selectedStatus);
                        else
                        {
                        orderList = (await this.orderRepository.GetByAsync(x => x.OrderCompletedOn.Date == orderDate.Date&&x.IsDeleted==false&&x.IsOrderCompleted== isOrderCompleted )).OrderByDescending(x => x.OrderCompletedOn).ToList();

                            foreach (var order in orderList)
                            {
                                var orderDetail = await this.orderDetailRepository.GetByAsync(x => x.OrderId == order.Id, x => x.Shopkeeper, x => x.Product.ProductType);
                            }
                            ord = orderList.Distinct().ToList();                    
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                        return _mapper.Map<List<OrderListViewModel>>(skiporders);
                        }
                        
                    }
                }
                else if(selectedShopkeeperId != 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != "") && (string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != ""))
                {       
                    var shopkeeperList = this.shopKeeperRepository.GetBy(x => x.Id == selectedShopkeeperId).FirstOrDefault();
                    if(selectedShopkeeperId == shopkeeperList.Id)
                    {
                        var OrderDetailList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == selectedShopkeeperId).ToList();
                        foreach (var orderDetail in OrderDetailList)
                        {
                            if (string.IsNullOrEmpty(selectedStatus)&& (string.IsNullOrEmpty(selectedOrderDate) || selectedOrderDate != ""))
                            {
                                if( string.IsNullOrEmpty(selectedOrderDate))
                                {
                                orderList = await this.orderRepository.GetByAsync(x => x.Id == orderDetail.OrderId && x.IsDeleted == false );
                                }
                                else
                                {
                                orderList = await this.orderRepository.GetByAsync(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.OrderCompletedOn.Date == orderDate.Date);
                                }                               
                                foreach (var order in orderList)
                                {
                                    if (order != null)
                                    {
                                        orders.Add(order);
                                    }
                                }
                            }
                            else
                            {
                                var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
                                if((string.IsNullOrEmpty(selectedOrderDate)))
                                {
                                     orderList = await this.orderRepository.GetByAsync(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted);
                                }
                                else
                                {
                                    orderList =await this.orderRepository.GetByAsync(x => x.Id == orderDetail.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted&&x.OrderCompletedOn.Date==orderDate.Date);
                                }                             
                                foreach (var order in orderList)
                                {
                                    if (order != null)
                                    {
                                        orders.Add(order);
                                    }
                                }
                            }
                        }
                    }
                    ord = orders.Distinct().ToList();
                skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);               
                 }
                return _mapper.Map<List<OrderListViewModel>>(skiporders);
        }
        public int getCurrentPageIndex(int orderCount, int maxRows, int currentPageIndex)

        {
            var pageCount = orderCount / maxRows;
            if (!(orderCount % maxRows == 0))
                pageCount += 1;
            if (currentPageIndex > pageCount)
                currentPageIndex = 1;
            return currentPageIndex;
        }

        public List<OrderListViewModel> GetAllOrdersByShopIdAndIsCompletedOrder(int currentPageIndex, int maxRows, bool isSortAscending, string selectedStatus)
        {
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            List<OrderList> skiporders = new List<OrderList>();
            var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
            var shopkeeperList = this.shopKeeperRepository.GetAll().ToList(); 
            foreach (var shopkeeper in shopkeeperList)
            {
                var OrderDetailList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeper.Id).ToList();
                foreach (var firstOrder in OrderDetailList)
                {
                    var orderLists = this.orderRepository.GetBy(x => x.Id == firstOrder.OrderId && x.IsDeleted == false).ToList();
                    foreach (var order in orderLists)
                    {
                        if (order.IsOrderCompleted == isOrderCompleted)
                        {
                            orders.Add(order);
                        }
                    }
                }
            }
            ord = orders.Distinct().ToList();
            skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
            return _mapper.Map<List<OrderListViewModel>>(skiporders);
        }

        public async Task<List<OrderListViewModel>> GetOrdersByShopkeeperId(int shopKeeperId, int currentPageIndex, string selectedStatus, bool isSortAscending)
        {
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            int maxRows = 10;
            var isOrderCompleted = System.Convert.ToBoolean(selectedStatus);
            if (currentPageIndex >= 1)
            { 
                if (shopKeeperId != 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != null))
                {
                    var shopkeeperId = this.shopKeeperRepository.GetBy(x => x.Id == shopKeeperId).FirstOrDefault();
                    var shopkeeperOrderList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeperId.Id).ToList();
                    if (string.IsNullOrEmpty(selectedStatus))
                    { 
                        foreach (var order in shopkeeperOrderList)
                        {
                            var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false).OrderByDescending(x => x.OrderCompletedOn);
                            foreach (var o in orderlist)
                            {
                                if (o != null)
                                {
                                    orders.Add(o);
                                }
                            }
                        }
                        ord = orders.Distinct().ToList();
                        int orderCount = ord.Count();
                        currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                    }
                    else
                    {
                        foreach (var order in shopkeeperOrderList)
                        {
                            var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false).OrderByDescending(x => x.OrderCompletedOn);
                            foreach (var o in orderlist)
                            {
                                if (o.IsOrderCompleted == isOrderCompleted)
                                {
                                        orders.Add(o);
                                }
                            }
                        }
                        ord = orders.Distinct().ToList();
                        int orderCount = ord.Count();
                        currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                    }
                }
                else if (shopKeeperId == 0 && (string.IsNullOrEmpty(selectedStatus) || selectedStatus != null))
                {
                    if (string.IsNullOrEmpty(selectedStatus))
                    {
                        var order = GetAllOrdersBySelectNullDropdownValues(currentPageIndex, isSortAscending);
                        return _mapper.Map<List<OrderListViewModel>>(order);
                    }
                    else
                    {
                        var shopkeeperList = this.shopKeeperRepository.GetAll().ToList();
                        foreach (var shopkeeper in shopkeeperList)
                        {
                            var shopkeeperOrders = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeper.Id).ToList();
                            foreach (var order in shopkeeperOrders)
                            {
                                var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false).OrderByDescending(x => x.OrderCompletedOn);
                                foreach (var o in orderlist)
                                {
                                    if (o.IsOrderCompleted == isOrderCompleted)
                                    {
                                        orders.Add(o);
                                    }
                                }
                            }
                        }
                        ord = orders.Distinct().ToList();
                        int orderCount = ord.Count();
                        currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                    }
                }
            }
            return _mapper.Map<List<OrderListViewModel>>(skiporders);
        }

        public List<OrderList> GetAllOrdersBySelectNullDropdownValues(int currentPageIndex, bool isSortAscending)
        {
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            int maxRows = 10;
            var shopkeeperId = this.shopKeeperRepository.GetAll().ToList();
            foreach (var shopkeeper in shopkeeperId)
            {
                var shopkeeperOrderList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeper.Id).ToList();
                foreach (var order in shopkeeperOrderList)
                {
                    var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false).OrderByDescending(x => x.OrderCompletedOn);
                    foreach (var o in orderlist)
                    {
                        if (o != null)
                        {
                            orders.Add(o);
                        }
                    }
                }
            }
            ord = orders.Distinct().ToList();
            skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
            return skiporders;
        }

        public List<OrderList> GetOrdersByisSortAscending(List<OrderList> ord, int currentPageIndex, int maxRows, bool isSortAscending)
        {
            List<OrderList> sortOrders = new List<OrderList>();
            List<OrderList> orderLists = new List<OrderList>();
            if (isSortAscending == false)
            {
                 orderLists = ord.OrderByDescending(x => x.OrderCompletedOn).Skip((currentPageIndex - 1) * maxRows).Take(maxRows).ToList();
            }
            else
            {
                 orderLists = ord.OrderBy(x => x.OrderCompletedOn).Skip((currentPageIndex - 1) * maxRows).Take(maxRows).ToList();
            }
            foreach (var or in orderLists)
            {
                if (or != null)
                {
                    sortOrders.Add(or);
                }
            }
            return sortOrders;
        }

        public async Task<List<OrderListViewModel>> GetOrdersByOrderStatus(string isOrderCompletedValue, int currentPageIndex, int selectedShopkeeperId, bool isSortAscending)
        {
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            int maxRows = 10;
            if (currentPageIndex >= 1)
            {
                if (selectedShopkeeperId == 0 && (string.IsNullOrEmpty(isOrderCompletedValue) || isOrderCompletedValue != null))
                {
                    if (string.IsNullOrEmpty(isOrderCompletedValue))
                    {
                        skiporders = GetAllOrdersBySelectNullDropdownValues(currentPageIndex, isSortAscending);
                    }
                    else
                    {
                        skiporders = GetAllOrdersByStatus(isOrderCompletedValue, currentPageIndex, isSortAscending);
                    }
                }
                else if (selectedShopkeeperId != 0 && (string.IsNullOrEmpty(isOrderCompletedValue) || isOrderCompletedValue != null))
                {
                    var shopkeeperId = this.shopKeeperRepository.GetAll().FirstOrDefault();
                    var isOrderCompleted = System.Convert.ToBoolean(isOrderCompletedValue);
                    var shopkeeperOrderList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == selectedShopkeeperId).ToList();
                    if (string.IsNullOrEmpty(isOrderCompletedValue))
                    {
                        foreach (var order in shopkeeperOrderList)
                        {
                            var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false).OrderByDescending(x => x.OrderCompletedOn);
                            foreach (var o in orderlist)
                            {
                                if (o != null)
                                {
                                    orders.Add(o);
                                }
                            }
                        }
                        ord = orders.Distinct().ToList();
                        int orderCount = ord.Count();
                        currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
                        skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                    }
                    else
                    {
                        foreach (var order in shopkeeperOrderList)
                        {
                            var orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted).OrderByDescending(x => x.OrderCompletedOn);
                            foreach (var o in orderlist)
                            {
                                if (o != null)
                                {
                                    orders.Add(o);
                                }
                            }
                        }
                        ord = orders.Distinct().ToList();
                        int orderCount = ord.Count();
                        currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
                       skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
                    }
                }
            }
            return _mapper.Map<List<OrderListViewModel>>(skiporders);
        }

        public List<OrderList> GetAllOrdersByStatus(string isOrderCompletedValue, int currentPageIndex, bool isSortAscending)
        {
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            int maxRows = 10;
            var isOrderCompleted = System.Convert.ToBoolean(isOrderCompletedValue);
            var shopkeeperList = this.shopKeeperRepository.GetAll().ToList();
            foreach (var shopkeeper in shopkeeperList)
            {
                var OrderDetailList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeper.Id).ToList();
                foreach (var firstOrder in OrderDetailList)
                {
                    var orderLists = this.orderRepository.GetBy(x => x.Id == firstOrder.OrderId && x.IsDeleted == false && x.IsOrderCompleted == isOrderCompleted).ToList();
                    foreach (var order in orderLists)
                    {
                        orders.Add(order);
                    }

                }
            }
            ord = orders.Distinct().ToList();
            int orderCount = ord.Count();
            currentPageIndex = getCurrentPageIndex(orderCount, maxRows, currentPageIndex);
            skiporders = GetOrdersByisSortAscending(ord, currentPageIndex, maxRows, isSortAscending);
            return skiporders;
        }
        public async Task<List<OrderListViewModel>> GetAllOrdersForSalesmen(int currentPageIndex, int shopId, string orderDateTime,int userId)
        {
            List<OrderList> orders = new List<OrderList>();
            List<OrderList> skiporders = new List<OrderList>();
            List<OrderList> ord = new List<OrderList>();
            List<OrderList> orderlist = new List<OrderList>();
            var orderDate = DateTime.Now;
            if(orderDateTime!=null)
                orderDate = Convert.ToDateTime(orderDateTime);             
            var maxRows = 5;
                var shopkeeperId = this.shopKeeperRepository.GetBy(x => x.Id == shopId).FirstOrDefault();
                var shopkeeperOrderList = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopkeeperId.Id).ToList();
      foreach (var order in shopkeeperOrderList)
      {
        if (orderDateTime == null)
               orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false &&x.OrderCompletedBy == userId).OrderByDescending(x => x.OrderCompletedOn).ToList();
     
              
           else
                orderlist = this.orderRepository.GetBy(x => x.Id == order.OrderId && x.IsDeleted == false &&x.OrderCompletedOn.Date == orderDate.Date&&x.OrderCompletedBy == userId).OrderByDescending(x=> x.OrderCompletedOn).ToList();

           foreach (var o in orderlist)
               if (o != null )
                   orders.Add(o);
           }  
             ord = orders.Distinct().ToList();
            var orderLists = ord.OrderByDescending(x => x.OrderCompletedOn).Skip((currentPageIndex - 1) * maxRows).Take(maxRows).ToList();
            foreach (var o in orderLists)
            {
                skiporders.Add(o);
            }
            return _mapper.Map<List<OrderListViewModel>>(skiporders);
        }

     

        public async Task<int> GetOrderCountForSalesmen(int shopId,string orderDateTime,int userId)
        {
            List<OrderList> orderCount = new List<OrderList>();
            List<OrderList> totalOrders = new List<OrderList>();
            var orderDate = DateTime.Now;
            if (orderDateTime != null)
                orderDate = Convert.ToDateTime(orderDateTime);
            var orderDetails = this.orderDetailRepository.GetBy(x => x.ShopkeeperId == shopId).ToList();
                foreach (var firstorder in orderDetails)
                {
                    if (orderDateTime!=null)
                         totalOrders = this.orderRepository.GetBy(x => x.Id == firstorder.OrderId && x.IsDeleted == false&&x.OrderCompletedOn.Date==orderDate.Date&& x.OrderCompletedBy == userId).ToList();
                    else
                        totalOrders = this.orderRepository.GetBy(x => x.Id == firstorder.OrderId && x.IsDeleted == false&& x.OrderCompletedBy == userId).ToList();

                    foreach (var order in totalOrders)
                    {
                        if (order!=null)
                            orderCount.Add(order);
                    }
                }
            orderCount = orderCount.Distinct().ToList();
            int numCount = orderCount.Count();
            return numCount;
        }

        public async Task<List<OrderDetailViewModel>> GetOrderDetail(Guid orderId)
        {
            var orderDetail = (await this.orderDetailRepository.GetByAsync(x => x.OrderId == orderId, x => x.Shopkeeper, x => x.Product.ProductType, x =>x.Product.ProductUnits));

            return _mapper.Map<List<OrderDetailViewModel>>(orderDetail);
             
        }
   
        public async Task<List<OrderListViewModel>> GetOrderListById(Guid orderId)
        {
            var orderList = (await this.orderRepository.GetByAsync(x => x.Id == orderId));

            return _mapper.Map<List<OrderListViewModel>>(orderList);
        }
        public async Task CreateOrderDetail(List<CartDetailViewModel> cartDetailViewModel, int userId, string note)
        {
            Guid orderId=Guid.NewGuid();
            var timeSpan = DateTime.UtcNow.Ticks.ToString();
            timeSpan = timeSpan.Remove(0, 10);
            var parts = new List<string>();
            for (var idx = 0; idx < timeSpan.Length; idx += 4)
            {
                parts.Add(timeSpan.Substring(idx, 4));
            }
            var orderNo = string.Join("-", parts);

            OrderListViewModel orderList = new OrderListViewModel();
            orderList.Id = orderId;
            orderList.OrderNo = orderNo;
            orderList.OrderCompletedOn = DateTime.UtcNow;
            orderList.OrderCompletedBy = userId;
            orderList.Note = note;

            var list = _mapper.Map<OrderList>(orderList);
            this.orderRepository.Add(list);
            var orderdetails = new OrderDetail();


            foreach (var cartDetails in cartDetailViewModel)
            {
                foreach (var productDetail in cartDetails.Product)
                {
                    if (productDetail.Quantity <= 0)
                    {
                        continue;
                    }
                    else
                    {
                        var orderDetails = new OrderDetail
                        {
                            Id = Guid.NewGuid(),
                            OrderId = orderId,
                            ShopkeeperId = cartDetails.ShopkeeperId,
                            ProductId = productDetail.Id,
                            Mrp = productDetail.Mrp,
                            Msp = (decimal)productDetail.Msp,
                            DiscountPrice = 0,
                            Unit=productDetail.UnitWeight,
                            Quantity = productDetail.Quantity,
                            CreatedDate = DateTime.UtcNow,
                            UpdatedDate = DateTime.UtcNow,
                            CreatedBy = -1,
                            UpdatedBy = -1
                        };

                        this.orderDetailRepository.Add(orderDetails);
                    }
                }
                
            }

            await this.unitOfWork.SaveAsync();
        }

        public async Task UpdateOrderDetail(List<OrderDetailViewModel> orderDetailViewModels, int userId)
        {
            var details = _mapper.Map<List<OrderDetail>>(orderDetailViewModels);
            foreach (var detail in details)
            {
                this.orderDetailRepository.Update(detail);
            }
            await this.unitOfWork.SaveAsync();
        }
        public async Task ProcessOrder(List<OrderDetailViewModel> orderDetail, Guid orderId)
        {
            OrderList orderList = (await this.orderRepository.GetByAsync(x => x.Id == orderId)).SingleOrDefault();
            orderList.IsOrderCompleted = true;
            List<OrderDetail> orderDetailsList = new List<OrderDetail>();

            foreach (var item in orderDetail)
            {
                if (item.Quantity <= 0)
                {
                    var orderItemId = this.orderDetailRepository.GetBy(x => x.Id == item.Id).FirstOrDefault();
                    this.orderDetailRepository.Delete(orderItemId);
                    orderList.IsDeleted = true;
                    await this.unitOfWork.SaveAsync();
                }
                else
                {
                    item.Product = null;
                    item.ShopKeeper = null;
                    var details = _mapper.Map<OrderDetail>(item);
                    orderDetailsList.Add(details);
                }
            }

            foreach (var detail in orderDetailsList)
            {
                this.orderDetailRepository.Update(detail);
            }
            await this.unitOfWork.SaveAsync();
        }

        public async Task UpdateOrder(List<OrderDetailViewModel> orderDetail, string note)
        {
            List<OrderDetail> orderDetailsList = new List<OrderDetail>();

            foreach (var item in orderDetail)
            {
                if (item.Quantity <= 0)
                {
                    var orderItemId = this.orderDetailRepository.GetBy(x => x.Id == item.Id).FirstOrDefault();
                    this.orderDetailRepository.Delete(orderItemId);
                    await this.unitOfWork.SaveAsync();
                }
                else
                {
                    item.Product = null;
                    item.ShopKeeper = null;
                    var details = _mapper.Map<OrderDetail>(item);
                    List<OrderList> orderlist = this.orderRepository.GetBy(x => x.Id == item.OrderId).ToList();
                    orderlist[0].Note = note;
                    orderDetailsList.Add(details);
                }
            }
            
            foreach (var detail in orderDetailsList)
            {
                this.orderDetailRepository.Update(detail);
            }
            await this.unitOfWork.SaveAsync();    
        }

        public async Task CancelOrder(Guid orderId)
        {
            OrderDetail orderDetail = this.orderDetailRepository.GetBy(x => x.Order.Id == orderId).FirstOrDefault();
            var orderList = this.orderRepository.GetBy(x => x.Id == orderDetail.OrderId).FirstOrDefault();
            orderList.IsDeleted = true;
            this.orderRepository.Update(orderList);
            await this.unitOfWork.SaveAsync();
        }

    }
}
