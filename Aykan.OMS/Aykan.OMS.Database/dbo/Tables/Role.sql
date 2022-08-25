CREATE TABLE [dbo].[Role] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (MAX) NOT NULL,
    [Description] VARCHAR (MAX) NULL,
    [CreatedBy]   INT           NOT NULL,
    [CreatedOn]   DATETIME      NOT NULL,
    [UpdatedBy]   INT           NOT NULL,
    [UpdatedOn]   DATETIME      NOT NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([Id] ASC)
);



