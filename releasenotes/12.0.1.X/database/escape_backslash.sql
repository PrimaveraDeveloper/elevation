UPDATE QueryBuilder.ListModelColumns
SET Description = REPLACE(REPLACE(REPLACE(Description, '\\', '|'),'\','\\'),'|','\\');