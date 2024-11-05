select customer_profile->'credit_card'->>'cardholder_name'
      ,customer_profile->>'email' 
  from customers;
