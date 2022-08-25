using Aykan.OMS.Common;
using Aykan.OMS.Common.Setting;
using Aykan.OMS.Repository.Entity;
using Aykan.OMS.Repository.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aykan.OMS.Business
{
    public class ProductBusiness
    {      
        private readonly IRepository<ProductType> productTypeRepository;
        private readonly IRepository<Product> productRepository;
        private readonly IUnitOfWork unitOfWork;
        private AppSettings appSettings;

        public ProductBusiness(IUnitOfWork unitOfWork, AppSettings appSettings)
        {
            this.appSettings = appSettings;
            this.unitOfWork = unitOfWork;
            this.productTypeRepository = unitOfWork.GetRepository<IRepository<ProductType>>();
            this.productRepository = unitOfWork.GetRepository<IRepository<Product>>();
        }
       
        public async Task<List<ProductType>> GetAllCategories()
        {
            List<ProductType> catrgories = new List<ProductType>();
            catrgories = await this.productTypeRepository.GetAllAsync();
            return catrgories;
        }
        public async Task<List<Product>> GetProductsByCategory(int categoryId)
        {
            List<Product> products = new List<Product>();
            products = await this.productRepository.GetByAsync(x => x.ProductTypeId == categoryId, x => x.ProductUnits);
            var productList = new List<Product>();
            products.ForEach(p => {
                p.Quantity = 0; // We really don't need quantity column in table Products.
                productList.Add(new Product()
                {
                    Id = p.Id,
                    ProductTypeId = p.ProductTypeId,
                    Name = p.Name,
                    Code = p.Code,
                    Description = p.Description,
                    UnitWeight = p.UnitWeight,
                    Quantity = p.Quantity,
                    Mrp = p.Mrp,
                    Msp = p.Msp,
                    ProductUnits = p.ProductUnits.Select(pu => new ProductUnit
                    {
                        Id = pu.Id,
                        ProductId = pu.ProductId,
                        Unit = pu.Unit
                    }).ToList()
                });
            });
            return productList;
        }

        public async Task<List<Product>> GetAllProduct()
        {
            List<Product> products = new List<Product>();
            products = await this.productRepository.GetAllAsync(x=>x.ProductUnits);
            var productList = new List<Product>();
            products.ForEach(p => {
                p.Quantity = 0;
                productList.Add(new Product()
                {
                    Id = p.Id,
                    ProductTypeId = p.ProductTypeId,
                    Name = p.Name,
                    Code = p.Code,
                    Description = p.Description,
                    UnitWeight = p.UnitWeight,
                    Quantity = p.Quantity,
                    Mrp = p.Mrp,
                    Msp = p.Msp,
                    ProductUnits = p.ProductUnits.Select(pu => new ProductUnit
                    {
                        Id = pu.Id,
                        ProductId = pu.ProductId,
                        Unit = pu.Unit
                    }).ToList()
                });
            });
            return productList;
        }
    }
}