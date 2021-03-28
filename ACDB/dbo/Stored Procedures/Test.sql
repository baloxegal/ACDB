Create procedure Test
as 
SET IDENTITY_INSERT [sectors] ON;
BEGIN TRANSACTION

	INSERT INTO [sectors]([sector_id], [sector_name]) VALUES (454, 'value 1')
	INSERT INTO [sectors]([sector_id], [sector_name]) VALUES (455, 'value 2')
	INSERT INTO [sectors]([sector_id], [sector_name]) VALUES (454, 'value 3')

COMMIT
