CREATE TABLE [dbo].[ProductType] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [ProductType] VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (250) NULL,
    CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED ([Id] ASC)
);



