using Aykan.OMS.Business;
using Aykan.OMS.Common.Model;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Aykan.OMS.Web.Controllers
{
    [Route("api/v1/Registration")]
    public class RegistrationController : ApiBaseController
    {
        private readonly UserBusiness _userBusiness;

        public RegistrationController(UserBusiness userBusiness)
        {
            _userBusiness = userBusiness;
        }

        [AllowAnonymous]
        [HttpPut]
        [Route("Register")]
        public IActionResult Register([FromBody] RegistrationModel registrationModel)
        {
            var status = _userBusiness.Registration(registrationModel);
            return Ok(status);
        }
    }
}
