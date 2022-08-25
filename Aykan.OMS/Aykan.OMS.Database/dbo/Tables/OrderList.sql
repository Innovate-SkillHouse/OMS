CREATE TABLE [dbo].[OrderList] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [OrderCompletedBy] INT              NOT NULL,
    [OrderCompletedOn] DATETIME         NOT NULL,
    [IsOrderCompleted] BIT              NOT NULL,
    [OrderNo]          VARCHAR (50)     NOT NULL,
    [Note]             VARCHAR (MAX)    NULL,
    [IsDeleted]        BIT              NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([Id] ASC)
);













