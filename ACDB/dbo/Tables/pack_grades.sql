CREATE TABLE [dbo].[pack_grades] (
    [grade_id]   INT          IDENTITY (1, 1) NOT NULL,
    [grade_name] VARCHAR (25) NULL,
    [min_price]  INT          NULL,
    [max_price]  INT          NULL,
    CONSTRAINT [grade_id_pk] PRIMARY KEY CLUSTERED ([grade_id] ASC)
);

