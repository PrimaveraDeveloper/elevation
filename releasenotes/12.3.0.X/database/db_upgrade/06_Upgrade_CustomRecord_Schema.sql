
-- Create column CompanyId
IF NOT EXISTS(SELECT 1 FROM sys.columns 
          WHERE Name = N'CompanyId'
          AND Object_ID = Object_ID(N'CorePatterns.CustomEntityRecords'))
BEGIN
    ALTER TABLE CorePatterns.CustomEntityRecords
	ADD CompanyId uniqueidentifier NULL;
END

-- Delete And create CustomEntityRecordsView

DROP VIEW [CorePatterns].[CustomEntityRecordsView]

GO
CREATE VIEW [CorePatterns].[CustomEntityRecordsView]
WITH SCHEMABINDING AS
SELECT
    E.[Id]
    , E.[SchemaEntityId]
	, E.[Key]
	, E.[Description]
	, E.[CompanyId]
	, E.[CustomAttributes]
	, E.[NaturalKey]
	, E.[IsDraft]
	, E.[CreatedBy]
	, E.[CreatedOn]
	, E.[ModifiedBy]
	, E.[ModifiedOn]
	, E.[IsActive]
	, E.[IsDeleted]
	, E.[IsSystem]
	, E.[Version]
FROM [CorePatterns].[CustomEntityRecords] E
WHERE E.[IsDeleted] = 0
GO


-- Delete And create CustomEntityRecordResourcesView

DROP VIEW [CorePatterns].[CustomEntityRecordResourcesView]

GO

CREATE VIEW [CorePatterns].[CustomEntityRecordResourcesView] 
WITH SCHEMABINDING AS
SELECT
    E.[Id]
	, T0.NaturalKey as [SchemaEntity]
    , E.[SchemaEntityId]
    , E.[Key]
    , E.[Description]
	, T1.NaturalKey as [Company]
    , E.[CompanyId]
	, T1.[Name] as [CompanyDescription]
    , E.[NaturalKey]
    , E.[IsDraft]
    , E.[CreatedBy]
    , E.[CreatedOn]
    , E.[ModifiedBy]
    , E.[ModifiedOn]
    , E.[IsActive] 
    , E.[IsDeleted]
    , E.[IsSystem]
    , E.[Version]
FROM [CorePatterns].[CustomEntityRecords] E
		left join [CorePatterns].[SchemaEntities] T0 on E.SchemaEntityId = T0.Id
		left join [CorePatterns].[Companies] T1 on E.CompanyId = T1.Id
WHERE E.[IsDeleted] = 0

--- CONSTRAINT
GO
IF EXISTS(
    SELECT * FROM sys.key_constraints
    WHERE parent_object_id = OBJECT_ID(N'CorePatterns.CustomEntityRecords') 
        AND name = 'CustomEntityRecords_UK'
)
BEGIN 
ALTER TABLE [CorePatterns].[CustomEntityRecords] DROP CONSTRAINT [CustomEntityRecords_UK]
END 

ALTER TABLE [CorePatterns].[CustomEntityRecords] ADD CONSTRAINT [CustomEntityRecords_UK] UNIQUE NONCLUSTERED ([CompanyId], [SchemaEntityId], [Key])
GO


IF EXISTS(
    SELECT 1 FROM sys.key_constraints 
    WHERE parent_object_id = OBJECT_ID(N'CorePatterns.CustomEntityRecords') 
        AND name = 'CustomEntityRecords_UK2'
)
BEGIN 

ALTER TABLE [CorePatterns].[CustomEntityRecords] DROP CONSTRAINT [CustomEntityRecords_UK2]
END 

ALTER TABLE [CorePatterns].[CustomEntityRecords] ADD CONSTRAINT [CustomEntityRecords_UK2] UNIQUE NONCLUSTERED ([NaturalKey], [CompanyId])
GO

IF EXISTS(
    SELECT 1 FROM sys.foreign_keys 
    WHERE parent_object_id = OBJECT_ID(N'CorePatterns.CustomEntityRecords') 
        AND name = 'CustomEntityRecords_Companies_CompanyId_FK'
)
BEGIN 

ALTER TABLE [CorePatterns].[CustomEntityRecords] DROP CONSTRAINT [CustomEntityRecords_Companies_CompanyId_FK]
END 

ALTER TABLE [CorePatterns].[CustomEntityRecords] ADD CONSTRAINT [CustomEntityRecords_Companies_CompanyId_FK]
FOREIGN KEY ([CompanyId]) REFERENCES [CorePatterns].[Companies] ([Id])
GO

ALTER FUNCTION  [CorePatterns].[CustomEntityRecords_CustomEntityRecordsQuery]
(@searchTerm NVARCHAR(100)  = '%', @user NVARCHAR(100)  = 'NULL', @culture NVARCHAR(100)  = 'NULL', @CompanyKey NVARCHAR(100)  = '')
RETURNS TABLE
AS
RETURN
(SELECT *
FROM (SELECT [SRC].[Id], [SRC].[Source_NaturalKey], [SRC].[Key], [SRC].[SchemaEntityKey], [SRC].[SchemaEntityId], [SRC].[SchemaEntityModuleName], [SRC].[Description], [SRC].[CompanyKey], [SRC].[CompanyId]
FROM (SELECT [T0].[Id] AS [Id], [T0].[NaturalKey] AS [Source_NaturalKey], [T0].[Key] AS [Key], [T1].[Key] AS [SchemaEntityKey], [T1].[Id] AS [SchemaEntityId], [T1].[ModuleName] AS [SchemaEntityModuleName], [T0].[Description] AS [Description], [T2].[CompanyKey] AS [CompanyKey], [T2].[Id] AS [CompanyId]
FROM [CorePatterns].[CustomEntityRecordsView] [T0]
LEFT JOIN [CorePatterns].[SchemaEntitiesView] [T1] ON [T0].[SchemaEntityId] = [T1].[Id]
LEFT JOIN [CorePatterns].[CompaniesView] [T2] ON [T0].[CompanyId] = [T2].[Id]
WHERE ((@searchTerm IN ('%', '%%')
OR (ISNULL([T0].[Key] COLLATE Latin1_general_CI_AI, '') LIKE @searchTerm COLLATE Latin1_general_CI_AI
OR ISNULL([T1].[Key] COLLATE Latin1_general_CI_AI, '') LIKE @searchTerm COLLATE Latin1_general_CI_AI
OR ISNULL([T1].[ModuleName] COLLATE Latin1_general_CI_AI, '') LIKE @searchTerm COLLATE Latin1_general_CI_AI
OR ISNULL([T0].[Description] COLLATE Latin1_general_CI_AI, '') LIKE @searchTerm COLLATE Latin1_general_CI_AI)))) [SRC]) [FILTERSRC]
WHERE (CompanyKey COLLATE Latin1_general_CI_AI = CASE WHEN ISNULL(@CompanyKey,'') = '' THEN CompanyKey ELSE @CompanyKey END COLLATE Latin1_general_CI_AI))
GO
