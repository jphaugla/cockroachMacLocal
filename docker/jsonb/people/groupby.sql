SELECT user_profile->>'first_name' first_name, count(*) total FROM users group by user_profile->>'first_name' order by total;
