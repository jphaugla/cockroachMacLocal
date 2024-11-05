SELECT id AS commodity, data->'prices'->0->'05/01/2022' AS "May prices" from commodity;
