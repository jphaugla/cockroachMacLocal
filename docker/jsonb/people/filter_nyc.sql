SELECT user_profile->'first_name', user_profile->'location' FROM users WHERE user_profile @> '{"location":"NYC"}';
