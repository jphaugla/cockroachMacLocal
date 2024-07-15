echo "starting $0"
docker-compose -f docker-compose-openssl-certs.yml down
rm -rf certs
echo "after rm commands"
docker-compose -f docker-compose-openssl-certs.yml build 
echo "after build"
# docker-compose -f docker-compose-openssl-certs.yml up -d
docker-compose -f docker-compose-openssl-certs.yml up
echo "after docker up"
# docker exec -it openssl sh -c "/tls-init/setup.sh"
echo "after setup"
docker-compose -f docker-compose-openssl-certs.yml down 
