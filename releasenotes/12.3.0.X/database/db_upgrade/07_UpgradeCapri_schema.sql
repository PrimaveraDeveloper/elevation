/*
	[CorePatterns].[usp_Extensibility_HasValueOnCompanies]
*/
IF EXISTS(SELECT id FROM sysobjects WHERE id = OBJECT_ID('[CorePatterns].[usp_Extensibility_HasValueOnCompanies]'))
	DROP PROCEDURE [CorePatterns].[usp_Extensibility_HasValueOnCompanies]
GO

CREATE PROCEDURE [CorePatterns].[usp_Extensibility_HasValueOnCompanies]
	@table [nvarchar](MAX),
	@masterTable [nvarchar](MAX),
	@masterAttribute [nvarchar](MAX),
	@customAttribute [nvarchar](MAX),
	@attributeSchemaEntityId uniqueidentifier,
	@companies [nvarchar](MAX)
AS
BEGIN
declare @sql nvarchar(4000)
declare @domainType nvarchar(100);

set @domainType = (SELECT TOP 1 AttributeType 
				  FROM [CorePatterns].[SchemaAttributes]
				  where  SchemaEntityId = @attributeSchemaEntityId AND [Name] like ''+ @customAttribute +''
				  AND  IsCustomAttribute = 1);

IF NULLIF(@masterTable, '') IS NOT NULL
-- IS DETAIL
	IF @domainType = 'Money'
		set @sql='SELECT Distinct(C.CompanyKey)
		from '+ @table +' D 
		LEFT JOIN '+ @masterTable +' M ON D.'+ @masterAttribute +' = M.Id
		LEFT JOIN [CorePatterns].[Companies] C ON M.CompanyId = C.Id
		where (JSON_VALUE(D.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(D.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'')
		AND JSON_VALUE(D.CustomAttributes,''$.' + @customAttribute + '.isDirty'') LIKE ''true''
		AND M.CompanyId IN (' + @companies + ')'
	ELSE
		set @sql='SELECT Distinct(C.CompanyKey)
		from '+ @table +' D
		LEFT JOIN '+ @masterTable +' M ON D.'+ @masterAttribute +' = M.Id
		LEFT JOIN [CorePatterns].[Companies] C ON M.CompanyId = C.Id
		where JSON_VALUE(D.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(D.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%''
		AND CompanyId IN (' + @companies + ')'
ELSE
-- IS NOT DETAIL
	IF @domainType = 'Money'
		set @sql='SELECT Distinct(C.CompanyKey)
		from '+ @table +' T 
		LEFT JOIN [CorePatterns].[Companies] C ON T.CompanyId = C.Id
		where (JSON_VALUE(T.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(T.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'')
		AND JSON_VALUE(T.CustomAttributes,''$.' + @customAttribute + '.isDirty'') LIKE ''true''
		AND CompanyId IN (' + @companies + ')'
	ELSE
		set @sql='SELECT Distinct(C.CompanyKey)
		from '+ @table +' T
		LEFT JOIN [CorePatterns].[Companies] C ON T.CompanyId = C.Id
		where JSON_VALUE(T.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(T.CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%''
		AND CompanyId IN (' + @companies + ')'

PRINT @sql

EXECUTE  sp_executesql @sql;
END
GO

/*
	[CorePatterns].[usp_Extensibility_HasValueOnCompaniesCustomEntity]
*/
IF EXISTS(SELECT id FROM sysobjects WHERE id = OBJECT_ID('[CorePatterns].[usp_Extensibility_HasValueOnCompaniesCustomEntity]'))
	DROP PROCEDURE [CorePatterns].[usp_Extensibility_HasValueOnCompaniesCustomEntity]
GO

CREATE PROCEDURE [CorePatterns].[usp_Extensibility_HasValueOnCompaniesCustomEntity]
	@schemaEntityId [nvarchar](MAX),
	@customAttribute [nvarchar](MAX),
	@attributeSchemaEntityId uniqueidentifier,
	@companies [nvarchar](MAX)
AS
BEGIN
declare @sql nvarchar(4000)
declare @domainType nvarchar(100);

set @domainType = (SELECT TOP 1 AttributeType 
				  FROM [CorePatterns].[SchemaAttributes]
				  where  SchemaEntityId = @attributeSchemaEntityId AND [Name] like ''+ @customAttribute +''
				  AND  IsCustomAttribute = 1);

IF @domainType = 'Money'
	set @sql='SELECT Distinct(C.CompanyKey)
			  FROM [CorePatterns].[CustomEntityRecords] CER
			  LEFT JOIN [CorePatterns].[Companies] C ON CER.CompanyId = C.Id
			  WHERE (SchemaEntityId = '''+ @schemaEntityId +''' 
			  AND JSON_VALUE(CustomAttributes,''$.' + @customAttribute + '.isDirty'') LIKE ''true'' and JSON_VALUE(CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'')
			  AND CompanyId IN (' + @companies + ')'

ELSE
	set @sql='SELECT Distinct(C.CompanyKey)
			  FROM [CorePatterns].[CustomEntityRecords] CER
			  LEFT JOIN [CorePatterns].[Companies] C ON CER.CompanyId = C.Id
			  WHERE (SchemaEntityId = '''+ @schemaEntityId +''' 
			  AND JSON_VALUE(CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'' OR JSON_QUERY(CustomAttributes,''$.' + @customAttribute + ''') LIKE ''%%'')
			  AND CompanyId IN (' + @companies + ')'

PRINT @sql

EXECUTE  sp_executesql @sql;
END
GO
