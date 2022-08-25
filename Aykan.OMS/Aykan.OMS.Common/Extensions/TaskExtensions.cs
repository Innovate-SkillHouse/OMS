using System.Threading.Tasks;

namespace Aykan.OMS.Common.Extensions
{
    public static class TaskExtensions
    {
        public static async void Forget(this Task task)
        {
            await task.ConfigureAwait(false);
        }
    }
}
