SELECT id as commodity, jsonb_array_elements(commodity.data->'prices') AS "price" FROM commodity;
