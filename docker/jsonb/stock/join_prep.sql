select order_details->>'customer_name'
      ,order_details->>'customer_email' 
  from orders;
