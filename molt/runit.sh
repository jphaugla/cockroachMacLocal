# /Applications/molt fetch --source "postgres://jasonhaugland@localhost:5432/postgres?sslmode=disable" --target "postgres://root@20.57.28.5:26257/jason?sslmode=verify-full&sslrootcert=/Users/jasonhaugland/certs/ca.crt&sslcert=/Users/jasonhaugland/certs/client.root.crt&sslkey=/Users/jasonhaugland/certs/client.root.key" --table-filter 'employees' --bucket-path 's3://molt-test' --table-handling drop-on-target-and-recreate --non-interactive
# /Applications/molt fetch --source "postgres://jasonhaugland@localhost:5432/postgres?sslmode=disable" --target "postgres://root@20.57.28.5:26257/jason?sslmode=verify-full&sslrootcert=/Users/jasonhaugland/certs/ca.crt&sslcert=/Users/jasonhaugland/certs/client.root.crt&sslkey=/Users/jasonhaugland/certs/client.root.key" --table-filter 'employees' --local-path '/Users/jasonhaugland/certs/molt/scripts/temp' --local-path-listen-addr '0.0.0.0:9005' --cleanup  --non-interactive
/Applications/molt fetch --source "postgres://jasonhaugland@localhost:5432/postgres?sslmode=disable" --target "postgres://root@20.57.28.5:26257/jason?sslmode=verify-full&sslrootcert=/Users/jasonhaugland/certs/ca.crt&sslcert=/Users/jasonhaugland/certs/client.root.crt&sslkey=/Users/jasonhaugland/certs/client.root.key" --table-filter 'employees' --table-handling 'drop-on-target-and-recreate' --direct-copy  --non-interactive