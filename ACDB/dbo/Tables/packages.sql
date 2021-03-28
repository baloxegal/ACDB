CREATE TABLE [dbo].[packages] (
    [pack_id]         INT          IDENTITY (1, 1) NOT NULL,
    [speed]           VARCHAR (10) NULL,
    [strt_date]       DATE         NULL,
    [monthly_payment] INT          NULL,
    [sector_id]       INT          NULL,
    CONSTRAINT [pack_id_pk] PRIMARY KEY CLUSTERED ([pack_id] ASC),
    CONSTRAINT [sec_id_fk] FOREIGN KEY ([sector_id]) REFERENCES [dbo].[sectors] ([sector_id])
);

