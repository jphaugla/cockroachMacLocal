explain analyze 
select customer_profile-'billing_address' as billing_address
      ,order_details-'shipping_address' as shipping_address 
  from customers c
      ,orders o 
 where o.email = c.email 
   and c.email = 'lisakim@example.com';
