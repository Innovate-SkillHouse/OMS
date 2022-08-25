using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Aykan.OMS.Web.Controllers
{
    [Authorize]
    [ApiController]
    public abstract class ApiBaseController : Controller
    {
    }
}
