explain analyze 
select order_details->'shipping_address' as shipping_address 
  from orders 
 where order_details->'customer_email' = '"lisakim@example.com"';
