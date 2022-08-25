using Aykan.OMS.Common;
using Aykan.OMS.Common.Model;
using Aykan.OMS.Common.Setting;
using Aykan.OMS.Repository.Entity;
using Aykan.OMS.Repository.Infrastructure;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Globalization;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using UDMGlobal.Hirchive.Organization.Common.Helpers;
using AutoMapper;

namespace Aykan.OMS.Business
{
    public class UserBusiness
    {
        private readonly IRepository<User> repository;
        private readonly IRepository<UserRole> userRolerepository;
        private readonly IUnitOfWork unitOfWork;
        private AppSettings appSettings;
        private readonly IMapper _mapper;

        public UserBusiness(IUnitOfWork unitOfWork, AppSettings appSettings, IMapper mapper)
        {
            this.appSettings = appSettings;
            this.unitOfWork = unitOfWork;
            this.repository = unitOfWork.GetRepository<IRepository<User>>();
            this._mapper = mapper;
            this.userRolerepository = unitOfWork.GetRepository<IRepository<UserRole>>();
        }

        public async Task<AuthenticationModel> AuthenticateUser(LoginModel loginModel)
        {
            using (var scope = unitOfWork.BeginTransaction())
            {
                    User user = (await this.repository.GetByAsync(x => x.UserName == loginModel.UserName,x=>x.UserRoles)).FirstOrDefault();
                   
                    if (user == null )
                        return null;
                var a = Cryptography.ComputeSHA256Hash(loginModel.Password, user.CreatedOn.ToString(CultureInfo.InvariantCulture));
                    AuthenticationModel authenticationModel = new AuthenticationModel()
                    {
                        UserId = user.Id,
                        UserName = user.Name,
                        RoleId = user.UserRoles.FirstOrDefault().RoleId

                    };

                    return authenticationModel;              
            }
        }

        public void PopulateJwtTokenAsync(AuthenticationModel authModel)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(appSettings.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                     new Claim(ClaimTypes.NameIdentifier, authModel.UserId.ToString()),
                }),
                Expires = authModel.TokenExpiryDate = DateTime.UtcNow.AddMinutes(this.appSettings.TokenSettings.SessionExpiryInMinutes),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature),
            };

            var token = tokenHandler.CreateToken(tokenDescriptor);
            authModel.Token = tokenHandler.WriteToken(token);
        }

        public bool Registration(RegistrationModel registrationModel)
        {
            var createdDate = DateTime.UtcNow;
            var user = new User()
            {
                Name = registrationModel.Name,
                Email = registrationModel.Email,
                Address = registrationModel.Address,
                MobileNumber = registrationModel.MobileNumber,
                PhoneNumber = null,
                UserCode = null,
                UserName = registrationModel.UserName,
                Password = Cryptography.ComputeSHA256Hash(registrationModel.Password, createdDate.ToString(CultureInfo.InvariantCulture)),
                CreatedBy = -1,
                CreatedOn = createdDate,
                UpdatedBy = -1,
                UpdatedOn = createdDate,
            };
            this.repository.Add(user);
            this.unitOfWork.Save();
            var userRole = new UserRole()
            {
                CreatedBy = -1,
                CreatedOn = createdDate,
                UpdatedBy = -1,
                UpdatedOn = createdDate,
                UserId = user.Id,
                RoleId = registrationModel.RegisterType,
            };

            this.userRolerepository.Add(userRole);
            this.unitOfWork.Save();
            return true;
        }

        public User GetUserById(int userId)
        {
            var userIds = this.repository.GetBy(x => x.Id == userId).FirstOrDefault();
            return _mapper.Map<User>(userIds);
        }

        public bool ChangePassword(ChangePasswordModel changePasswordModel, int currentUserId)
        {
            var userDetails = GetUserById(currentUserId);
            if (userDetails.Password != Cryptography.ComputeSHA256Hash(changePasswordModel.CurrentPassword, userDetails.CreatedOn.ToString(CultureInfo.InvariantCulture)))
            {
                return false;
            }
            userDetails.Password = Cryptography.ComputeSHA256Hash(changePasswordModel.NewPassword, userDetails.CreatedOn.ToString(CultureInfo.InvariantCulture));
            this.repository.Update(userDetails);
            this.unitOfWork.Save();
            return true;
        }

    }
}
