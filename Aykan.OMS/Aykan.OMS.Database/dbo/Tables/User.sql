CREATE TABLE [dbo].[User] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (128)  NOT NULL,
    [UserName]     VARCHAR (50)   NOT NULL,
    [Password]     NVARCHAR (128) NOT NULL,
    [MobileNumber] NVARCHAR (15)  NOT NULL,
    [PhoneNumber]  NVARCHAR (15)  NULL,
    [Email]        NVARCHAR (50)  NULL,
    [UserCode]     NVARCHAR (20)  NULL,
    [Address]      NVARCHAR (MAX) NOT NULL,
    [CreatedBy]    INT            NOT NULL,
    [CreatedOn]    DATETIME       NOT NULL,
    [UpdatedBy]    INT            NOT NULL,
    [UpdatedOn]    DATETIME       NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC)
);







