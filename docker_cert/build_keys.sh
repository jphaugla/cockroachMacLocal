docker-compose down -f docker-compose-gen-certs.yml
rm -rf certs/crdb*
rm -rf certs/haproxy*
rm -f certs/client*
docker-compose -f docker-compose-gen-certs.yml build 
docker-compose -f docker-compose-gen-certs.yml up 
docker-compose -f docker-compose-gen-certs.yml down 
docker rmi cockroachdb/cockroach
