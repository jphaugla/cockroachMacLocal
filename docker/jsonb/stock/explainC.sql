explain analyze 
select customer_profile->'billing_address' as billing_address
      ,order_details->'shipping_address' as shipping_address 
  from orders
      ,customers
 where order_details->'customer_email' = customer_profile->'email' 
   and customer_profile->'email' = '"lisakim@example.com"' 
   and order_details->'customer_email' = '"lisakim@example.com"';
