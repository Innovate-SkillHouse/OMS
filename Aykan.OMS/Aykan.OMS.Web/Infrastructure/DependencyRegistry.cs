using Aykan.OMS.Business;
using Aykan.OMS.Common;
using Aykan.OMS.Common.Setting;
using Microsoft.Extensions.DependencyInjection;

namespace Aykan.OMS.Web.Infrastructure
{
    public static class DependencyRegistry
    {
        public static void RegisterDependency(this IServiceCollection services, AppSettings appsettings)
        {
            services.AddSingleton(appsettings);
            services.AddScoped<ApplicationContext>();
            BusinessDependencyRegistry.RegisterDependency(services, appsettings);
        }
    }
}
