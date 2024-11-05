CREATE TABLE json_data (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    json_info JSONB
);
INSERT INTO json_data (json_info) VALUES ('{"amount": "123.45"}');
ALTER TABLE json_data ADD COLUMN amount DECIMAL AS ((json_info->>'amount')::DECIMAL) STORED;
