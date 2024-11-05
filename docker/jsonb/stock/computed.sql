ALTER TABLE customers ADD COLUMN email string AS (customer_profile->>'email') STORED;
ALTER TABLE orders ADD COLUMN email string AS (order_details->>'customer_email') STORED;
