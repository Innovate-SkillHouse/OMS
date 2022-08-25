using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Aykan.OMS.Repository.Entity
{
    public partial class OmsDbContext : DbContext
    {
        public OmsDbContext()
        {
        }

        public OmsDbContext(DbContextOptions<OmsDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Language> Languages { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<OrderList> OrderLists { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductTranslation> ProductTranslations { get; set; }
        public virtual DbSet<ProductType> ProductTypes { get; set; }
        public virtual DbSet<ProductUnit> ProductUnits { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<ShopKeeper> ShopKeepers { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserRole> UserRoles { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.;Database=Aykan.OMS.Database;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Language>(entity =>
            {
                entity.ToTable("Language");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<OrderDetail>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DiscountPrice).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.Mrp)
                    .HasColumnType("decimal(18, 2)")
                    .HasColumnName("MRP");

                entity.Property(e => e.Msp)
                    .HasColumnType("decimal(18, 2)")
                    .HasColumnName("MSP");

                entity.Property(e => e.Unit).HasMaxLength(250);

                entity.Property(e => e.UpdatedDate).HasColumnType("datetime");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.OrderDetails)
                    .HasForeignKey(d => d.OrderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderDetails_OrderList");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.OrderDetails)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderDetails_Product");

                entity.HasOne(d => d.Shopkeeper)
                    .WithMany(p => p.OrderDetails)
                    .HasForeignKey(d => d.ShopkeeperId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderDetails_ShopKeeper");
            });

            modelBuilder.Entity<OrderList>(entity =>
            {
                entity.ToTable("OrderList");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Note)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.OrderCompletedOn).HasColumnType("datetime");

                entity.Property(e => e.OrderNo)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("Product");

                entity.Property(e => e.Code).HasMaxLength(50);

                entity.Property(e => e.Mrp)
                    .HasColumnType("decimal(18, 2)")
                    .HasColumnName("MRP");

                entity.Property(e => e.Msp)
                    .HasColumnType("decimal(18, 2)")
                    .HasColumnName("MSP");

                entity.Property(e => e.Name).IsRequired();

                entity.Property(e => e.UnitWeight)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("Unit Weight");

                entity.HasOne(d => d.ProductType)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.ProductTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Product_ProductType");
            });

            modelBuilder.Entity<ProductTranslation>(entity =>
            {
                entity.ToTable("ProductTranslation");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.ProductName).IsRequired();

                entity.HasOne(d => d.Language)
                    .WithMany(p => p.ProductTranslations)
                    .HasForeignKey(d => d.LanguageId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ProductTranslation_ProductTranslation");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductTranslations)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_ProductTranslation_Product");
            });

            modelBuilder.Entity<ProductType>(entity =>
            {
                entity.ToTable("ProductType");

                entity.Property(e => e.Description)
                    .HasMaxLength(250)
                    .IsUnicode(false);

                entity.Property(e => e.ProductType1)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("ProductType");
            });

            modelBuilder.Entity<ProductUnit>(entity =>
            {
                entity.ToTable("ProductUnit");

                entity.Property(e => e.Unit)
                    .IsRequired()
                    .HasMaxLength(250);

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductUnits)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ProductUnit_Product");
            });

            modelBuilder.Entity<Role>(entity =>
            {
                entity.ToTable("Role");

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.Description).IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .IsUnicode(false);

                entity.Property(e => e.UpdatedOn).HasColumnType("datetime");
            });

            modelBuilder.Entity<ShopKeeper>(entity =>
            {
                entity.ToTable("ShopKeeper");

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(250);

                entity.Property(e => e.CreatedBy).HasDefaultValueSql("((1))");

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.MobileNumber).HasMaxLength(15);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PhoneNumber).HasMaxLength(50);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User");

                entity.Property(e => e.Address).IsRequired();

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.MobileNumber)
                    .IsRequired()
                    .HasMaxLength(15);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(128)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(128);

                entity.Property(e => e.PhoneNumber).HasMaxLength(15);

                entity.Property(e => e.UpdatedOn).HasColumnType("datetime");

                entity.Property(e => e.UserCode).HasMaxLength(20);

                entity.Property(e => e.UserName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<UserRole>(entity =>
            {
                entity.ToTable("UserRole");

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.UpdatedOn).HasColumnType("datetime");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.UserRoles)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UserRole_Role");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.UserRoles)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UserRole_User");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
