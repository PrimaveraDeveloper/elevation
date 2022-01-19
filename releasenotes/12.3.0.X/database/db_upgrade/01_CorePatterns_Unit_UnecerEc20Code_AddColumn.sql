IF NOT EXISTS(SELECT 1 FROM sys.columns 
          WHERE Name = N'UnecerEc20Code'
          AND Object_ID = Object_ID(N'CorePatterns.Units'))
BEGIN
    ALTER TABLE [CorePatterns].[Units]
	ADD [UnecerEc20Code] nvarchar(20) NULL;
END