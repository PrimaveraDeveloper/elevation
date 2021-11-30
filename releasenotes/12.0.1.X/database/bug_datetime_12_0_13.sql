
-- FUNCTIONS

/*
	[CorePatterns].[GetCustomAttributeValue]
*/
IF EXISTS ( SELECT  1
            FROM    Information_schema.Routines
            WHERE   Specific_schema = 'CorePatterns' AND 
                    specific_name = 'GetCustomAttributeValue'
                    AND Routine_Type = 'FUNCTION' )
    DROP Function [CorePatterns].[GetCustomAttributeValue]
GO

CREATE FUNCTION  [CorePatterns].[GetCustomAttributeValue]
(@json NVARCHAR(MAX), @jsonPath NVARCHAR(100), @domainType NVARCHAR(20))
RETURNS sql_variant
AS
BEGIN
	DECLARE @ReturnValue sql_variant
	SELECT @ReturnValue = JSON_VALUE(@json, @jsonPath)

	IF @domainType = 'Boolean'
		RETURN CAST(@ReturnValue AS bit)
	if @domainType = 'Number'
	    return CAST(@ReturnValue as int)
	IF @domainType = 'Decimal'
	    RETURN CAST(@ReturnValue AS decimal(22,6))
	if @domainType = 'Date'
	    RETURN CAST(@ReturnValue AS date)
	if @domainType = 'Datetime'
	    RETURN CAST(@ReturnValue AS datetimeoffset)

	RETURN @ReturnValue
END
GO

IF EXISTS ( SELECT  1
            FROM    Information_schema.Routines
            WHERE   Specific_schema = 'CorePatterns' AND 
                    specific_name = 'GetCustomAttributeObject'
                    AND Routine_Type = 'FUNCTION' )
    DROP Function [CorePatterns].[GetCustomAttributeObject]
GO

CREATE FUNCTION  [CorePatterns].[GetCustomAttributeObject]
(@json NVARCHAR(1000), @jsonPath NVARCHAR(100), @domainType NVARCHAR(20))
RETURNS sql_variant
AS
BEGIN
	DECLARE @ReturnValue sql_variant
	SELECT @ReturnValue = json_query(@json, @jsonPath)

	IF @domainType = 'Boolean'
		RETURN CAST(@ReturnValue AS bit)
	if @domainType = 'Number'
	    return CAST(@ReturnValue as int)
	IF @domainType = 'Decimal'
	    RETURN CAST(@ReturnValue AS decimal(22,6))
	if @domainType = 'Date'
	    RETURN CAST(@ReturnValue AS date)
	if @domainType = 'Datetime'
	    RETURN CAST(@ReturnValue AS datetimeoffset)

	RETURN @ReturnValue
END
GO
