-- Unit.UnecerEc20Code

IF NOT EXISTS(SELECT 1 FROM [CorePatterns].[SchemaAttributes] WHERE Id = '423a3d9d-54ba-4948-b610-1454a983fb8a')
BEGIN
    INSERT INTO [CorePatterns].[SchemaAttributes] ([Description], [Id], [Key], [AttributeType], [IsNaturalKey], [IsDescription], [Visible], [SchemaEntityId], [IsRequired], [Persisted], [IsInternal], [IsSystemBase], [IsActive], [IsDeleted], [IsSystem], [NaturalKey], [LookupEntityId], [IsSequenceManaged], [Localizable], [Cloneable], [IsPersonalData])
    VALUES ('{"Values":[{ "Culture":"en","Data":"Unecer Ec20"}]}', '423a3d9d-54ba-4948-b610-1454a983fb8a', 'UnecerEc20Code', 'ShortText', 'False', 'False' , 1, 'a35d5fb1-84ab-46b9-a599-813542cda30b', 'False', 'True', 'False', 'False', 1, 0, 1, 'UNITS.COREPATTERNS.UNECEREC20CODE', NULL, 0, 'False', 1, 0)
END
GO