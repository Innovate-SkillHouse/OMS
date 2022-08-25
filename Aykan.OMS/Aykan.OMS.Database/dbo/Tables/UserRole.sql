CREATE TABLE [dbo].[UserRole] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [UserId]    INT      NOT NULL,
    [RoleId]    INT      NOT NULL,
    [CreatedBy] INT      NOT NULL,
    [CreatedOn] DATETIME NOT NULL,
    [UpdatedBy] INT      NOT NULL,
    [UpdatedOn] DATETIME NOT NULL,
    CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([Id]),
    CONSTRAINT [FK_UserRole_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);



