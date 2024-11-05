UPDATE commodity SET data = jsonb_set(data, '{prices, 1, "06/01/2022"}', '90.5') where id = 'silver';
