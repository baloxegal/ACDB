CREATE TABLE [dbo].[sectors] (
    [sector_id]   INT          IDENTITY (1, 1) NOT NULL,
    [sector_name] VARCHAR (10) NULL,
    CONSTRAINT [sec_id_pk] PRIMARY KEY CLUSTERED ([sector_id] ASC)
);

