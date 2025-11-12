-- SQL to merge updates into a Delta Table
MERGE INTO sales USING updates ON sales.id = updates.id
WHEN MATCHED THEN UPDATE SET *
WHEN NOT MATCHED THEN INSERT *;

-- SQL to view Delta Table history
DESCRIBE HISTORY sales;
