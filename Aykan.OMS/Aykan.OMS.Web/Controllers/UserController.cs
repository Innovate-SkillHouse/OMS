using Aykan.OMS.Business;
using Aykan.OMS.Common.Model;
using Aykan.OMS.Repository.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Aykan.OMS.Web.Controllers
{
    [Route("api/v1/user")]
    public class UserController : ApiBaseController
    {
        private readonly UserBusiness _userBusiness;

        public UserController(UserBusiness userBusiness)
        {
            _userBusiness = userBusiness;
        }

        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Login([FromBody] LoginModel loginModel)
        {
            var authModel = await _userBusiness.AuthenticateUser(loginModel);
            if (authModel != null)
            {
                _userBusiness.PopulateJwtTokenAsync(authModel);
                return Ok(authModel);
            }
            else
            {
                // TODO: Make a multi-lingual framework and get all the messages from that.
                return Unauthorized(new { Message = "Please make sure username and password are correct and try again!" });
            }
        }

        [AllowAnonymous]
        [HttpPut]
        [Route("ChangePassword")]
        public async Task<IActionResult> ChangePassword(ChangePasswordModel changePasswordModel, int currentUserId)
        {
            var result = _userBusiness.ChangePassword(changePasswordModel, currentUserId);
            return Ok(result);
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetAllUser")]
       
        public List<User> GetAllUser()
        {
            var users = _userBusiness.GetAllUser();
            return users;


        }


    }
}
