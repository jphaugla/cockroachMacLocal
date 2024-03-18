CREATE DATABASE IF NOT EXISTS kwikshoppr;
USE kwikshoppr;
CREATE TABLE items (item_id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
                    name STRING,
                    description STRING,
                    price DECIMAL NOT NULL,
                    quantity INT DEFAULT 0);
INSERT INTO items (item_id, name, description, quantity, price)
     VALUES ('aaaaaaaa-0000-0000-0000-000000000000', 'Sunscreen', 'SPF 50 sunscreen. Extra gooey!', 8, 10.05),
            ('bbbbbbbb-0000-0000-0000-000000000000', 'Toothpaste', 'Minty toothpaste for all your brushing needs', 1, 2.99),
            ('cccccccc-0000-0000-0000-000000000000', 'Toothbrush', 'Soft bristled toothbrush', 100, 3.99);
