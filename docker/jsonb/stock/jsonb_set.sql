update stock set item = jsonb_set(item, '{books, 2, "price"}', '5.49') where item->>'series' = 'Sharpe';
