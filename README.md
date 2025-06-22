# Snowflake Banking ELT Project

This project simulates a real-time ELT pipeline for a banking use case using Snowflake.

---

## Use Case

Daily credit card transactions are loaded from AWS S3 using Snowpipe into Snowflake and transformed using SQL for reporting and analytics.

---

## Tech Stack
- Snowflake Cloud Data Warehouse
- AWS S3
- Snowpipe
- SQL

---

## ELT Flow Summary

1. Files are auto-ingested from AWS S3 using `txn_pipe` (Snowpipe)
2. Data lands in `stg_txns` using COPY INTO
3. Transformations applied to load into `final_txns`
   
---

## File Descriptions

- `01_create_stage.sql`  
  Creates an external stage to connect to the AWS S3 bucket.

- `02_copy_into_stg.sql`  
  Uses Snowpipe/COPY INTO to load data from S3 to Snowflake staging table.

- `03_transformations.sql`  
  Applies filtering and transformation to load clean data into the final table.

---

## Notes
This is a complete ELT use case simulation based on real-time banking transaction data using Snowflake.


