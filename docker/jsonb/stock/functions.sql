select item->'series', jsonb_array_elements(item->'books')->'ISBN' from stock;
