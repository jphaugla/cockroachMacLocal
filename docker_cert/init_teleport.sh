# builds the crdb_init image that runs setup scripts for teleport
docker-compose build
# build keys
./build_keys.sh
# builds the psql image used to test psql connectivity issues
docker-compose -f docker-compose-psql.yml build
