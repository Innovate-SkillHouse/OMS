using System;

namespace Aykan.OMS.Common
{
    public class ApplicationContext
    {
        public string CorrelationId { get; } = Guid.NewGuid().ToString();
        public int UserId { get; set; } = -1;
    }
}
