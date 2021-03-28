CREATE TABLE [dbo].[customers] (
    [Customer_Id]         INT            IDENTITY (1, 1) NOT NULL,
    [First_Name]          VARCHAR (25)   NULL,
    [Last_Name]           VARCHAR (25)   NULL,
    [Birth_Date]          VARCHAR (25)   NULL,
    [Join_Date]           DATE           NULL,
    [City]                VARCHAR (45)   NULL,
    [State]               VARCHAR (25)   NULL,
    [Street]              VARCHAR (40)   NULL,
    [main_phone_num]      VARCHAR (12)   NOT NULL,
    [secondary_phone_num] VARCHAR (12)   NULL,
    [fax]                 VARCHAR (12)   NULL,
    [monthly_discount]    DECIMAL (4, 2) NULL,
    [pack_id]             INT            NULL,
    CONSTRAINT [cst_id_pk] PRIMARY KEY CLUSTERED ([Customer_Id] ASC),
    CONSTRAINT [pck_id_fk] FOREIGN KEY ([pack_id]) REFERENCES [dbo].[packages] ([pack_id])
);

