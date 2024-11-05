select customer_profile->'billing_address' as billing_address
      ,order_details->'shipping_address' as shipping_address
  from customers
      ,orders 
 where order_details->>'customer_email' = customer_profile->>'email';
