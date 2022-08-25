using Aykan.OMS.Common;
using Aykan.OMS.Common.Setting;
using Aykan.OMS.Repository.Entity;
using Aykan.OMS.Repository.Infrastructure;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.Text;
using Aykan.OMS.Common.ViewModel;
using AutoMapper;

namespace Aykan.OMS.Business
{
    public class ShopBusiness
    {
        private readonly IRepository<ShopKeeper> repository;
        private readonly IRepository<ProductType> productTypeRepository;
        private readonly IRepository<Product> productRepository;
        private readonly IUnitOfWork unitOfWork;
        private AppSettings appSettings;
        private readonly IMapper _mapper;

        public ShopBusiness(IUnitOfWork unitOfWork, AppSettings appSettings, IMapper mapper)
        {
            this.appSettings = appSettings;
            this.unitOfWork = unitOfWork;
            _mapper = mapper;
            this.repository = unitOfWork.GetRepository<IRepository<ShopKeeper>>();
            this.productTypeRepository = unitOfWork.GetRepository<IRepository<ProductType>>();
            this.productRepository = unitOfWork.GetRepository<IRepository<Product>>();
        }
        public async Task<List<ShopKeeper>> GetAllShops (int userId)
        {
            List<ShopKeeper> shops = new List<ShopKeeper>();
            if (userId >0)
            shops = this.repository.GetBy(x => x.IsDeleted == false && x.CreatedBy == userId);
            else
                shops = this.repository.GetBy(x => x.IsDeleted == false);
            return shops;
        }
        public  async Task<ShopModel> GetShopById(int shopId)
        {
           var  shopDetail = new ShopModel();
           var  shops =  await this.repository.GetByAsync(x=>x.Id==shopId);

            foreach (var shop in shops) {
                shopDetail.Address = shop.Address;
                shopDetail.Id = shop.Id;
                shopDetail.Name = shop.Name;
            }
            return shopDetail;
        }
        public async Task<List<ProductType>> GetAllCategories()
        {
            List<ProductType> categories = new List<ProductType>();
            categories = await this.productTypeRepository.GetAllAsync();
            return categories;
        }
        public async Task<List<Product>> GetAllProducts()
        {
            List<Product> products = new List<Product>();
            products = await this.productRepository.GetAllAsync();
            return products;
        }

        public bool AddShop(AddEditShopModel shopModel)
        {
            var shopEntity = _mapper.Map<ShopKeeper>(shopModel);
            this.repository.Add(shopEntity);
            this.unitOfWork.Save();
            return true;
        }
        public async Task UpdateShop(AddEditShopModel shopModel)
        {
            try
            {
                var shopEntity=this._mapper.Map<ShopKeeper>(shopModel);
                this.repository.Update(shopEntity);
                 this.unitOfWork.Save();
            }
            catch(Exception e)
            {
                throw e;
            }
    
        }


        public async Task<bool> DeleteShop(int id)
        {
            List<ShopKeeper> shops = new List<ShopKeeper>();
            shops = await this.repository.GetByAsync(x => x.Id == id);
            shops[0].IsDeleted = true;
            this.repository.Update(shops[0]);
            await this.unitOfWork.SaveAsync();
            return true;
        }
    }
}
