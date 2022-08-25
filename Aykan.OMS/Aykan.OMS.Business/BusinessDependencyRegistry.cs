using Aykan.OMS.Common.Setting;
using Aykan.OMS.Repository;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aykan.OMS.Business
{
    public static class BusinessDependencyRegistry
    {
        public static void RegisterDependency(IServiceCollection services, AppSettings appSettings)
        {
            RepositoryDependencyRegistry.RegisterDependency(services, appSettings);

            services.AddTransient<UserBusiness>();
            services.AddTransient<ShopBusiness>();
            services.AddTransient<ProductBusiness>();
            services.AddTransient<OrderBusiness>();
        }
    }
}
