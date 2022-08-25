using Aykan.OMS.Common;
using Aykan.OMS.Common.Extensions;
using Aykan.OMS.Common.Setting;
using Aykan.OMS.Repository.Entity;
using Aykan.OMS.Repository.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace Aykan.OMS.Repository
{
    public static class RepositoryDependencyRegistry
    {
        public static void RegisterDependency(IServiceCollection services, AppSettings appSettings)
        {
            services.AddSingleton<IRepositoryFactory, RepositoryFactory>();

            services.AddTransient<IUnitOfWork, OmsDbContext>(provider =>
                new OmsDbContext(
                    provider.GetService<IRepositoryFactory>(),
                    new DbContextOptionsBuilder<OmsDbContext>().UseSqlServer(appSettings.ConnectionString).Options,
                    provider.GetService<ApplicationContext>()));

            services.AddRepository<IRepository<User>, Repository<User>>();
            services.AddRepository<IRepository<UserRole>, Repository<UserRole>>();
            services.AddRepository<IRepository<ShopKeeper>, Repository<ShopKeeper>>();
            services.AddRepository<IRepository<ProductType>, Repository<ProductType>>();
            services.AddRepository<IRepository<Product>, Repository<Product>>();
            services.AddRepository<IRepository<OrderList>, Repository<OrderList>>();
            services.AddRepository<IRepository<OrderDetail>, Repository<OrderDetail>>();
        }
    }
}
