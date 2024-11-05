CREATE TABLE public.customers (
      profile_id UUID NOT NULL DEFAULT gen_random_uuid(),
      last_updated TIMESTAMP DEFAULT now(),
      customer_profile JSONB);

CREATE TABLE public.orders (
      order_id UUID primary key DEFAULT gen_random_uuid(),
      order_details JSONB);


insert into customers(customer_profile) values
 ('{"email":"johndoe@example.com","billing_address":{"address_1":"123 Main St","city":"New York","state":"NY","postcode":"10001","country":"USA"},"marketing_opt_in":true,"credit_card":{"cardholder_name":"John Doe","card_number":"4242424242424242","expiry_month":12,"expiry_year":2024,"cvv":123}}')
,('{"email":"davidchen@example.com","billing_address":{"address_1":"456 Elm St","city":"Los Angeles","state":"CA","postcode":"90001","country":"USA"},"marketing_opt_in":false,"credit_card":{"cardholder_name":"David Chen","card_number":"4242424242424242","expiry_month":6,"expiry_year":2023,"cvv":456}}')
,('{"email":"bobjohnson@example.com","billing_address":{"address_1":"789 Oak St","city":"Chicago","state":"IL","postcode":"60601","country":"USA"},"marketing_opt_in":true,"credit_card":{"cardholder_name":"Bob Johnson","card_number":"4242424242424242","expiry_month":9,"expiry_year":2025,"cvv":789}}')
,('{"email":"janesmith@example.com","billing_address":{"address_1":"101 Maple St","city":"Boston","state":"MA","postcode":"02108","country":"USA"},"marketing_opt_in":false,"credit_card":{"cardholder_name":"Jane Smith","card_number":"4242424242424242","expiry_month":3,"expiry_year":2023,"cvv":101}}')
,('{"email":"sarahlee@example.com","billing_address":{"address_1":"111 Pine St","city":"Seattle","state":"WA","postcode":"98101","country":"USA"},"marketing_opt_in":true,"credit_card":{"cardholder_name":"Sarah Lee","card_number":"4242424242424242","expiry_month":2,"expiry_year":2024,"cvv":111}}')
,('{"email":"lisakim@example.com","billing_address":{"address_1":"222 Cherry St","city":"San Francisco","state":"CA","postcode":"94104","country":"USA"},"marketing_opt_in":false,"credit_card":{"cardholder_name":"Lisa Kim","card_number":"4242424242424242","expiry_month":11,"expiry_year":2023,"cvv":222}}')
,('{"email":"tomwilson@example.com","billing_address":{"address_1":"333 Pineapple St","city":"Miami","state":"FL","postcode":"33101","country":"USA"},"marketing_opt_in":true,"credit_card":{"cardholder_name":"Tom Wilson","card_number":"4242424242424242","expiry_month":8,"expiry_year":2022,"cvv":333}}')
;

insert into orders (order_details) values 
('{"order_number":"DF008", "customer_name": "John Doe", "customer_email": "johndoe@example.com", "shipping_address": [{"address_1": "aaa", "city": "bbb", "postcode": "ccc"}], "items": [{ "ISBN": "XXX", "price": 9.99 }, { "ISBN": "YYY", "price": 9.99}]}'),
('{"order_number":"DF001","customer_name":"John Doe","customer_email":"johndoe@example.com","shipping_address":[{"address_1":"1 High Street","city":"London","postcode":"SW1A 2AA"}],"items":[{"ISBN":"978-0451462343","price":9.99},{"ISBN":"978-0451463951","price":9.99}]}'),
('{"order_number":"DF002","customer_name":"Jane Smith","customer_email":"janesmith@example.com","shipping_address":[{"address_1":"2 Baker Street","city":"Manchester","postcode":"M1 1AA"}],"items":[{"ISBN":"978-0451461681","price":9.99},{"ISBN":"978-0451463890","price":9.99}]}'),
('{"order_number":"DF003","customer_name":"Bob Johnson","customer_email":"bobjohnson@example.com","shipping_address":[{"address_1":"3 Oxford Road","city":"Birmingham","postcode":"B1 1AA"}],"items":[{"ISBN":"978-0451464408","price":9.99},{"ISBN":"978-0451463173","price":9.99}]}'),
('{"order_number":"DF004","customer_name":"Sarah Lee","customer_email":"sarahlee@example.com","shipping_address":[{"address_1":"4 George Street","city":"Edinburgh","postcode":"EH1 1AA"}],"items":[{"ISBN":"978-0451464347","price":9.99},{"ISBN":"978-0451462725","price":9.99}]}'),
('{"order_number":"DF005","customer_name":"David Chen","customer_email":"davidchen@example.com","shipping_address":[{"address_1":"5 York Street","city":"Leeds","postcode":"LS1 1AA"}],"items":[{"ISBN":"978-0451464460","price":9.99},{"ISBN":"978-0451464019","price":9.99}]}'),
('{"order_number":"DF006","customer_name":"Lisa Kim","customer_email":"lisakim@example.com","shipping_address":[{"address_1":"6 Market Square","city":"Glasgow","postcode":"G1 1AA"}],"items":[{"ISBN":"978-0451463272","price":9.99},{"ISBN":"978-0451462909","price":9.99}]}'),
('{"order_number":"DF007","customer_name":"Tom Wilson","customer_email":"tomwilson@example.com","shipping_address":[{"address_1":"7 Main Road","city":"Bristol","postcode":"BS1 1AA"}],"items":[{"ISBN":"978-0451462398","price":9.99},{"ISBN":"978-0451463739","price":9.99}]}');
