CREATE TABLE [dbo].[ProductUnit] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [ProductId] INT            NOT NULL,
    [Unit]      NVARCHAR (250) NOT NULL,
    CONSTRAINT [PK_ProductUnit] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductUnit_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);



