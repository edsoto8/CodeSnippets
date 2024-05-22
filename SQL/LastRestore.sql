USE msdb

SELECT destination_database_name DatabaseName
    , max(restore_date) RestoreDate
FROM restorehistory
-- WHERE destination_database_name LIKE 'atmtest%'
GROUP BY destination_database_name
ORDER BY RestoreDate DESC
