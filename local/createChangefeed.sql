create changefeed for table movr.promo_codes, movr.rides into 'kafka://10.142.15.207:9092?topic_prefix=Filly_' with updated, resolved='20s', format = 'json';
