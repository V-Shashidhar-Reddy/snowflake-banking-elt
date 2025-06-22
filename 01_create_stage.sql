CREATE OR REPLACE STAGE s3_stage
URL = 's3://banking-txn-daily/'
STORAGE_INTEGRATION = s3_int;