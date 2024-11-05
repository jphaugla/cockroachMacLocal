explain analyze 
select customer_profile->'billing_address' as billing_address 
  from customers 
 where customer_profile->'email' = '"lisakim@example.com"';
