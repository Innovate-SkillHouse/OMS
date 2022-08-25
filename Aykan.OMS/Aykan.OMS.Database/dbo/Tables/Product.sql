CREATE TABLE [dbo].[Product] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [ProductTypeId] INT             NOT NULL,
    [Name]          NVARCHAR (MAX)  NOT NULL,
    [Code]          NVARCHAR (50)   NULL,
    [Description]   NVARCHAR (MAX)  NULL,
    [Unit Weight]   NVARCHAR (50)   NOT NULL,
    [Quantity]      INT             NOT NULL,
    [MRP]           DECIMAL (18, 2) NOT NULL,
    [MSP]           DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([Id])
);





