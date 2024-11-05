select row_number() over() as count
      ,item->'series' as series
      ,jsonb_array_elements(item->'books')->'ISBN' as ISBN
      ,jsonb_array_elements(item->'books')->>'title' as title
      ,jsonb_array_elements(item->'books')->'price' as price
  from stock
 where item->>'series' = 'Sharpe';
