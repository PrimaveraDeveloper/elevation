
-- Create Table [CorePatterns].[ExtensibilityViewDefinitions]

IF NOT EXISTS (SELECT id FROM sysobjects WHERE id = OBJECT_ID('[CorePatterns].[ExtensibilityViewDefinitions]'))
BEGIN
CREATE TABLE [CorePatterns].[ExtensibilityViewDefinitions]
(
    [Id] uniqueidentifier NOT NULL
    , [Culture] nvarchar(20) NOT NULL
	, [SchemaEntityId] uniqueidentifier NOT NULL
	, [ViewDefinition] nvarchar(MAX) NOT NULL
	, [NaturalKey] nvarchar(255) NOT NULL
	, [IsDraft] bit NOT NULL
	, [CreatedBy] nvarchar(255) NOT NULL
	, [CreatedOn] datetimeoffset(7) NOT NULL
	, [ModifiedBy] nvarchar(255) NOT NULL
	, [ModifiedOn] datetimeoffset(7) NOT NULL
	, [IsActive] bit NOT NULL
	, [IsDeleted] bit NOT NULL
	, [IsSystem] bit NOT NULL
	, [Version] timestamp NOT NULL
) ON [PRIMARY]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_PK] PRIMARY KEY NONCLUSTERED ([Id])

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_UK] UNIQUE NONCLUSTERED ([Culture], [SchemaEntityId])

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_UK2] UNIQUE NONCLUSTERED ([NaturalKey])

CREATE CLUSTERED INDEX [ExtensibilityViewDefinitions_IDX0] ON [CorePatterns].[ExtensibilityViewDefinitions] ([CreatedOn])

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_Id_DF] DEFAULT (NEWSEQUENTIALID()) FOR [Id]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_IsDraft_DF] DEFAULT (0) FOR [IsDraft]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_CreatedBy_DF] DEFAULT ('<Sys>') FOR [CreatedBy]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_CreatedOn_DF] DEFAULT (SYSDATETIMEOFFSET()) FOR [CreatedOn]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_ModifiedBy_DF] DEFAULT ('<Sys>') FOR [ModifiedBy]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_ModifiedOn_DF] DEFAULT (SYSDATETIMEOFFSET()) FOR [ModifiedOn]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_IsActive_DF] DEFAULT (1) FOR [IsActive]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_IsDeleted_DF] DEFAULT (0) FOR [IsDeleted]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_IsSystem_DF] DEFAULT (0) FOR [IsSystem]

ALTER TABLE [CorePatterns].[ExtensibilityViewDefinitions] ADD CONSTRAINT [ExtensibilityViewDefinitions_SchemaEntities_SchemaEntityId_FK]
FOREIGN KEY ([SchemaEntityId]) REFERENCES [CorePatterns].[SchemaEntities] ([Id])


END

GO

-- Create View  [CorePatterns].[ExtensibilityViewDefinitionsView]

IF OBJECT_ID('CorePatterns.ExtensibilityViewDefinitionsView', 'V' ) IS NOT NULL 
	DROP VIEW [CorePatterns].[ExtensibilityViewDefinitionsView]
GO
CREATE VIEW [CorePatterns].[ExtensibilityViewDefinitionsView]
WITH SCHEMABINDING AS
SELECT
    E.[Id]
    , E.[Culture]
	, E.[SchemaEntityId]
	, E.[ViewDefinition]
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
FROM [CorePatterns].[ExtensibilityViewDefinitions] E
WHERE E.[IsDeleted] = 0
GO

-- Create View  [CorePatterns].[ExtensibilityViewDefinitionResourcesView]

IF OBJECT_ID('CorePatterns.ExtensibilityViewDefinitionResourcesView', 'V' ) IS NOT NULL 
	DROP VIEW [CorePatterns].[ExtensibilityViewDefinitionResourcesView]
GO
CREATE VIEW [CorePatterns].[ExtensibilityViewDefinitionResourcesView] 
WITH SCHEMABINDING AS
SELECT
    E.[Id]
    , E.[Culture]
	, T0.NaturalKey as [SchemaEntity]
    , E.[SchemaEntityId]
    , E.[ViewDefinition]
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
FROM [CorePatterns].[ExtensibilityViewDefinitions] E
		left join [CorePatterns].[SchemaEntities] T0 on E.SchemaEntityId = T0.Id
WHERE E.[IsDeleted] = 0

GO

-- ExtensibilityViewDefinition

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaEntities] WHERE Id = '9f82e5ce-3c64-4239-aa19-3e59b4e44937')
BEGIN
    INSERT INTO [CorePatterns].[SchemaEntities] ([Id], [Key], [ModuleName], [Title], [EntityTypeId], [EntityName], [Database], [BaseEntityId], [IsGenericExtension], [LockingEnabled], [HasSequenceAttribute], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [IsRestrictable]) 
    VALUES ('9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'ExtensibilityViewDefinitions', 'CorePatterns', '{"Values":[{ "Culture":"en","Data":"Extensibility View Definition"}]}', (SELECT Id from [CorePatterns].[SchemaEntityTypes] WHERE Id = 'd4ed5adc-1618-4e79-9263-e02e3dd6fc79'), 'Primavera.Core.Patterns.Domain.ExtensibilityViewDefinition', 'Enterprise', NULL, 0, 0, 0, 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS', 0 )
END
GO

-- ExtensibilityViewDefinition.Id

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '17296cc1-c0e9-4e91-ba35-011a3a361013')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Id"}]}', '17296cc1-c0e9-4e91-ba35-011a3a361013', 'Id', 'UniqueIdentifier', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.ID', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.NaturalKey

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = 'd78143cf-3f10-4670-af5c-259aa4a6a0fe')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Extensibility View Definition"}]}', 'd78143cf-3f10-4670-af5c-259aa4a6a0fe', 'NaturalKey', 'LongText', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.NATURALKEY', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.IsDraft

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = 'c353e231-2ef0-40bd-abae-406718ba6b3a')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Draft"}]}', 'c353e231-2ef0-40bd-abae-406718ba6b3a', 'IsDraft', 'Boolean', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.ISDRAFT', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.CreatedBy

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '4146181d-97ce-45d6-888b-4d38994ef9e9')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Created By"}]}', '4146181d-97ce-45d6-888b-4d38994ef9e9', 'CreatedBy', 'LongText', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.CREATEDBY', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.CreatedOn

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = 'b0a29265-621c-49d3-9724-3f82f8aec34d')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Created On"}]}', 'b0a29265-621c-49d3-9724-3f82f8aec34d', 'CreatedOn', 'Datetime', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.CREATEDON', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.ModifiedBy

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '569cd017-2aa2-49ad-aa6b-7956ab8cb16d')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Modified By"}]}', '569cd017-2aa2-49ad-aa6b-7956ab8cb16d', 'ModifiedBy', 'LongText', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.MODIFIEDBY', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.ModifiedOn

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = 'cba98c22-b60c-4cf6-b8c8-b14ee2eabe31')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Modified On"}]}', 'cba98c22-b60c-4cf6-b8c8-b14ee2eabe31', 'ModifiedOn', 'Datetime', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.MODIFIEDON', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.IsActive

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = 'ab3593db-7f7d-4035-a735-fa1526b9f081')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Active"}]}', 'ab3593db-7f7d-4035-a735-fa1526b9f081', 'IsActive', 'Boolean', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.ISACTIVE', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.IsDeleted

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '566ba25a-492a-475a-9005-42bc66a0dc0d')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Deleted"}]}', '566ba25a-492a-475a-9005-42bc66a0dc0d', 'IsDeleted', 'Boolean', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'True', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.ISDELETED', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.IsSystem

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '3093e0ad-0d67-461b-94e2-667c3cf3fda7')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"System"}]}', '3093e0ad-0d67-461b-94e2-667c3cf3fda7', 'IsSystem', 'Boolean', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'True', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.ISSYSTEM', NULL, 0, 'False', 0, 0)
END
GO

-- ExtensibilityViewDefinition.Culture

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '9ece98f9-3f62-4bd5-ad35-07247077a6c9')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Culture"}]}', '9ece98f9-3f62-4bd5-ad35-07247077a6c9', 'Culture', 'ShortText', 'True', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'False', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.CULTURE', NULL, 0, 'False', 1, 0)
END
GO

-- ExtensibilityViewDefinition.SchemaEntity

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '5ca81e26-8749-4b35-8b1f-e752dd663c5f')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Schema Entity"}]}', '5ca81e26-8749-4b35-8b1f-e752dd663c5f', 'SchemaEntity', 'View', 'True', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'False', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.SCHEMAENTITY', 'f5ce031f-fa96-4c2c-8d44-d71f621e9232', 0, 'False', 1, 0)
END
GO

-- ExtensibilityViewDefinition.SchemaEntity

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaEntitiesAssociations] WHERE [Id] = '598d7642-bbf0-96d4-2c37-e4912207f016')
BEGIN
    INSERT INTO [CorePatterns].[SchemaEntitiesAssociations] ([Id], [SchemaEntityId], [TargetId], [AttributeId], [IsComposition], [IsManyToMany], [IsActive], [IsDeleted], [IsSystem])
    VALUES ('598d7642-bbf0-96d4-2c37-e4912207f016', '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'f5ce031f-fa96-4c2c-8d44-d71f621e9232', '5ca81e26-8749-4b35-8b1f-e752dd663c5f', 0, 0, 1, 0, 1)
END
GO

-- ExtensibilityViewDefinition.ViewDefinition

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '08383132-676a-4ab2-9496-93e690a99575')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"View Definition"}]}', '08383132-676a-4ab2-9496-93e690a99575', 'ViewDefinition', 'Memo', 'False', 'False' , 1, '9f82e5ce-3c64-4239-aa19-3e59b4e44937', 'True', 'True', 'False', 'False', 1, 0, 1, 'EXTENSIBILITYVIEWDEFINITIONS.COREPATTERNS.VIEWDEFINITION', NULL, 0, 'False', 1, 0)
END
GO




-- -- -- -- -- -- -- -- -- -- -- -- 
-- Lookup Query: [CorePatterns].[CorePatterns.ExtensibilityViewDefinitionsLookup]
-- -- -- -- -- -- -- -- -- -- -- -- 
-- Lookup Query Definition: [CorePatterns].[CorePatterns.ExtensibilityViewDefinitionsLookup]

IF EXISTS ( SELECT  1
            FROM [QueryBuilder].[ListModels]
            WHERE [Id]= '9f82e5ce-3c64-4239-aa19-3e59b4e44937')
	DELETE FROM [QueryBuilder].[ListModels] WHERE [Id]= '9f82e5ce-3c64-4239-aa19-3e59b4e44937'
GO

INSERT INTO [QueryBuilder].[ListModels] ([Id],[ModuleName],[ServiceName],[Name],[Description],[User],[SearchPlaceHolder],[Searcheable],[MainEntityId],[NaturalKey],[CreatedBy],[IsSystem],[RuntimeDefinition],[DefaultQuery])
VALUES (
    '9f82e5ce-3c64-4239-aa19-3e59b4e44937'
    ,'CorePatterns'
    ,'ExtensibilityViewDefinitions'
    ,'ExtensibilityViewDefinitionsLookup'
	,'{"Values":[{ "Culture":"en","Data":"Extensibility View Definition"}]}'
    ,'<sys>'
	,'{"Values":[{ "Culture":"en","Data":"(Extensibility View Definition)"}]}'
    ,1
    ,'9f82e5ce-3c64-4239-aa19-3e59b4e44937'
    ,'9f82e5ce-3c64-4239-aa19-3e59b4e44937'
    ,'<sys>'
    ,1
    ,null
    ,1
    )
GO


-- Column: NaturalKey (NaturalKey) 


IF NOT EXISTS(SELECT 1 FROM [QueryBuilder].[ListModelColumns] WHERE Id = '91c8c175-292a-d3f3-dc4e-8228ddee277f')
BEGIN
INSERT INTO [QueryBuilder].[ListModelColumns]
    ([Id], [Description], [Sortable], [Groupable], [DisplayOrder], [PresentationDataType], [GroupByDirection], [GroupByIndex], [OrderByDirection], [OrderByIndex], [ListModelId], [IsMainDrillDown], [Index], [IsSystem], [Path], [Name], [IsVisible])
VALUES (
        '91c8c175-292a-d3f3-dc4e-8228ddee277f'
        ,'{"Values":[{ "Culture":"en","Data":"Extensibility View Definition"}]}'
        ,'True'
        ,'False'
        ,0
        ,'LongText'
        ,'None'
        ,-1
        ,'None'
        ,-1
        ,'9f82e5ce-3c64-4239-aa19-3e59b4e44937'
        ,0
        ,0
        ,1
        ,'NaturalKey'
        ,'NaturalKey'
        ,'True'
        )
END
GO

-- List Query TVF: ExtensibilityViewDefinitionsQuery

IF EXISTS ( SELECT  1
            FROM    Information_schema.Routines
            WHERE   Specific_schema = 'CorePatterns' AND 
                    specific_name = 'ExtensibilityViewDefinitionsQuery'
                    AND Routine_Type = 'FUNCTION' )
    DROP Function [CorePatterns].[ExtensibilityViewDefinitionsQuery]
GO

CREATE FUNCTION  [CorePatterns].[ExtensibilityViewDefinitionsQuery]
(@searchTerm NVARCHAR(100)  = '%', @user NVARCHAR(100)  = 'NULL', @culture NVARCHAR(100)  = 'NULL')
RETURNS TABLE
AS
RETURN
(SELECT [T1].[Id], [T1].[NaturalKey] AS [NaturalKey]
FROM [CorePatterns].[ExtensibilityViewDefinitionsView] [T1]
WHERE (NOT (([T1].[IsActive] = 0
AND [T1].[IsSystem] = 1))
AND ([T1].[NaturalKey] COLLATE Latin1_general_CI_AI LIKE @searchTerm COLLATE Latin1_general_CI_AI)))
GO





	-- Association Lookup: ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery (ExtensibilityViewDefinitions | ExtensibilityViewDefinition | ExtensibilityViewDefinition.SchemaEntity)

	IF EXISTS ( SELECT  1
            FROM    Information_schema.Routines
            WHERE   Specific_schema = 'CorePatterns' AND 
                    specific_name = 'ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery'
                    AND Routine_Type = 'FUNCTION' )
    DROP Function [CorePatterns].[ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery]
GO

	CREATE FUNCTION  [CorePatterns].[ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery]
(@searchTerm NVARCHAR(100)  = '%', @user NVARCHAR(100)  = 'NULL', @culture NVARCHAR(100)  = 'NULL')
RETURNS TABLE
AS
RETURN
(SELECT [T1].[Id], [T1].[NaturalKey]
FROM [CorePatterns].SchemaEntitiesQuery(@searchTerm, @user, @culture) [T1]
JOIN [CorePatterns].[SchemaEntitiesView] [T] ON [T1].[Id] = [T].[Id]
WHERE [T].[IsActive] = 1)
GO

	
-- CorePatterns.Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery

IF EXISTS ( SELECT  1
            FROM    INFORMATION_SCHEMA.ROUTINES
            WHERE   [SPECIFIC_SCHEMA] = 'CorePatterns' AND 
                    [SPECIFIC_NAME] = 'Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery' AND
                    [ROUTINE_TYPE] = 'FUNCTION' )
    DROP FUNCTION [CorePatterns].[Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery]
GO

-- [CorePatterns].Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery_Parameters

IF EXISTS ( SELECT  1
            FROM    Information_schema.DOMAINS
            WHERE   [DOMAIN_SCHEMA] = 'CorePatterns' AND 
                    [DOMAIN_NAME] = 'Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery_Parameters' AND 
                    [DATA_TYPE] = 'table type' )
    DROP TYPE [CorePatterns].Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery_Parameters
GO

CREATE TYPE [CorePatterns].Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery_Parameters
AS 
TABLE (
    NaturalKey NVARCHAR(100)
);
GO


CREATE FUNCTION [CorePatterns].[Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery] (
     @List AS [CorePatterns].Verify_ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery_Parameters READONLY
    ,@User AS NVARCHAR(100)
    ,@Culture AS NVARCHAR(100)
    )
RETURNS TABLE
AS
RETURN
(
    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS [Row]
        ,[NaturalKey]
        ,(
            SELECT TOP 1 [Id]
            FROM [CorePatterns].[ExtensibilityViewDefinition_SchemaEntitiesForSchemaEntityQuery](List.NaturalKey, @User, @Culture)
         ) AS [MatchId]
    FROM @List AS List
)
GO



