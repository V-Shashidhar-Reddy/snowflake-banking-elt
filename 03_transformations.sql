CREATE OR REPLACE TABLE final_txns AS
SELECT 
    txn_id,
    customer_id,
    txn_amount,
    txn_date,
    txn_type,
    CURRENT_DATE AS load_date
FROM stg_txns
WHERE txn_status = 'SUCCESS';