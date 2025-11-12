# PySpark code to create a Delta Table in Databricks
df.write.format("delta").save("/mnt/delta/sales_data")

sql("CREATE TABLE sales USING DELTA LOCATION '/mnt/delta/sales_data'")
