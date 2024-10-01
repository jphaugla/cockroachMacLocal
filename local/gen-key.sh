keyprefix=$1
cockroach gen encryption-key -s 128 data_key/${keyprefix}aes-128.key
