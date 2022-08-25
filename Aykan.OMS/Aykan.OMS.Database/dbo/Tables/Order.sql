CREATE TABLE [dbo].[Order] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [OrderId]          NVARCHAR (250)   NOT NULL,
    [OrderDetailId]    UNIQUEIDENTIFIER NOT NULL,
    [OrderCompletedBy] INT              NOT NULL,
    [OrderCompletedOn] DATETIME         NOT NULL,
    [IsOrderCompleted] BIT              NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Order_Order] FOREIGN KEY ([OrderDetailId]) REFERENCES [dbo].[OrderDetails] ([Id])
);



