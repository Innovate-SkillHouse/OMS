CREATE TABLE [dbo].[OrderDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ProductId]     INT              NOT NULL,
    [ShopkeeperId]  INT              NOT NULL,
    [OrderId]       UNIQUEIDENTIFIER NOT NULL,
    [MRP]           DECIMAL (18, 2)  NOT NULL,
    [MSP]           DECIMAL (18, 2)  NOT NULL,
    [DiscountPrice] DECIMAL (18, 2)  NOT NULL,
    [Unit]          NVARCHAR (250)   NULL,
    [Quantity]      INT              NOT NULL,
    [CreatedBy]     INT              NOT NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [UpdatedBy]     INT              NOT NULL,
    [UpdatedDate]   DATETIME         NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderDetails_OrderList] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[OrderList] ([Id]),
    CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_OrderDetails_ShopKeeper] FOREIGN KEY ([ShopkeeperId]) REFERENCES [dbo].[ShopKeeper] ([Id])
);









