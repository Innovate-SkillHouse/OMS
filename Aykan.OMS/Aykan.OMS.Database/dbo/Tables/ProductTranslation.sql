CREATE TABLE [dbo].[ProductTranslation] (
    [Id]            INT            NOT NULL,
    [LanguageId]    INT            NOT NULL,
    [ProductId]     INT            NULL,
    [ProductTypeId] INT            NULL,
    [ProductName]   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ProductTranslation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductTranslation_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductType] ([Id]),
    CONSTRAINT [FK_ProductTranslation_ProductTranslation] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id])
);

