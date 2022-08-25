using Aykan.OMS.Common;

namespace Aykan.OMS.Repository.Infrastructure
{
    public interface IRepositoryFactory
    {
        TRepository CreateInstance<TRepository>(IUnitOfWork unitOfWork) where TRepository : IRepository;
    }
}
