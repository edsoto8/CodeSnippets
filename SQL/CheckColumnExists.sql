IF EXISTS (
        SELECT 1
        FROM sys.columns
        WHERE object_id = OBJECT_ID('YourTableName')
            AND name = 'YourColumnName'
        )
BEGIN
    -- Column exists
    PRINT 'Column exists in the table.';
END
ELSE
BEGIN
    -- Column does not exist
    PRINT 'Column does not exist in the table.';
END
