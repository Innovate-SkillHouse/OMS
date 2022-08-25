using AutoMapper;
using Aykan.OMS.Common.ViewModel;
using Aykan.OMS.Common.Model;
using Aykan.OMS.Repository.Entity;

namespace Aykan.OMS.Web.Infrastructure
{
    public class AutoMapperConfig : Profile
    {
        public AutoMapperConfig()
        {
            // Entity to Model
            CreateMap<User, RegistrationModel>();
            CreateMap<OrderList, OrderListViewModel>();
            CreateMap<OrderDetail, OrderDetailViewModel>();
            CreateMap<ProductType, OrderDetailViewModel>();
            CreateMap<ShopKeeper, ShopModel>();
            CreateMap<ShopKeeper, AddEditShopModel>();
            CreateMap<ProductType, ProductTypeViewModel>();
            CreateMap<Product, ProductViewModel>();

            // Model to Entity
            CreateMap<RegistrationModel, User>();
            CreateMap<RegistrationModel, UserRole>();
            CreateMap<OrderListViewModel, OrderList >();
            CreateMap<OrderDetailViewModel,OrderDetail >();
            CreateMap<OrderDetailViewModel, ProductType>();
            CreateMap<ShopModel,ShopKeeper >();
            CreateMap<AddEditShopModel, ShopKeeper>();
            CreateMap<ProductTypeViewModel,ProductType >();
            CreateMap<ProductViewModel, Product >();
        }
    }
}
