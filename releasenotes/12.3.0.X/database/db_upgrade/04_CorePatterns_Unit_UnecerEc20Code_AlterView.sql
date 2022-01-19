ALTER VIEW [CorePatterns].[UnitsView]
WITH SCHEMABINDING AS
SELECT
    E.[Id]
    , E.[UnitKey]
	, E.[Description]
	, E.[PrecisionDigits]
	, E.[ConversionFactor]
	, E.[ConversionFactorDecimalPlaces]
	, E.[Symbol]
	, E.[DimensionId]
	, E.[IsDimensionBaseUnit]
	, E.[UnecerEc20Code]
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
FROM [CorePatterns].[Units] E
WHERE E.[IsDeleted] = 0
GO


GO
ALTER VIEW [CorePatterns].[UnitResourcesView] 
WITH SCHEMABINDING AS
SELECT
    E.[Id]
    , E.[UnitKey]
    , E.[Description]
    , E.[PrecisionDigits]
    , E.[ConversionFactor]
    , E.[ConversionFactorDecimalPlaces]
    , E.[Symbol]
	, T0.NaturalKey as [Dimension]
    , E.[DimensionId]
	, T0.[Description] as [DimensionDescription]
    , E.[IsDimensionBaseUnit]
    , E.[UnecerEc20Code]
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
FROM [CorePatterns].[Units] E
		left join [CorePatterns].[UnitDimensions] T0 on E.DimensionId = T0.Id
WHERE E.[IsDeleted] = 0