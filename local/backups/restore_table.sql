restore table bank.bank from latest  in 's3://bank?AWS_ACCESS_KEY_ID=minioadmin&AWS_SECRET_ACCESS_KEY=minioadmin&AWS_ENDPOINT=http://127.0.0.1:9000&AWS_REGION=us-east-1';
restore table bank.bank from latest  in 's3://bank?AWS_ACCESS_KEY_ID=minioadmin&AWS_SECRET_ACCESS_KEY=minioadmin&AWS_ENDPOINT=http://127.0.0.1:9000&AWS_REGION=us-east-1' AS OF SYSTEM TIME '2025-01-17 21:10:30';
