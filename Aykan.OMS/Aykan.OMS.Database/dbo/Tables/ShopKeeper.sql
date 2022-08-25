CREATE TABLE [dbo].[ShopKeeper] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (50)   NOT NULL,
    [MobileNumber] NVARCHAR (15)  NULL,
    [PhoneNumber]  NVARCHAR (50)  NULL,
    [Email]        NVARCHAR (50)  NULL,
    [Address]      NVARCHAR (250) NOT NULL,
    [IsDeleted]    BIT            NOT NULL DEFAULT 0,
    [CreatedBy]    INT            NOT NULL DEFAULT 1,
    CONSTRAINT [PK_ShopKeeper] PRIMARY KEY CLUSTERED ([Id] ASC)
);











