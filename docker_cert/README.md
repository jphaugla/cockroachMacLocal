# generate CRDB certs and run with those certs
* [link for installing colima with hombrew](https://smallsharpsoftwaretools.com/tutorials/use-colima-to-run-docker-containers-on-macos/)
* [Colima github](https://github.com/abiosoft/colima)
## Steps
* ./init_teleport.sh
  * handles initializing teleport by doing the following steps
    * builds the crdb_init image using docker-compose build
    * choose to build keys using cockroach cert or with openssl by uncommenting/commenting
      * ./build_keys.sh
        * this builds the certificates using a crdb container with cockroach cert command
      * ./build_openssl_keys.sh
        * this builds the certificates using an openssl container with openssl commands
    * ./build_psql.sh
      * this builds the a client psql container for debugging connectivity
* ./start_teleport.sh
  * starts crdb containers, crdb client container, psql, and teleport
  * NOTE:  must change the start line in docker-compose.yml for each of the 3 cockroach nodes depending on if using cockroach cert or cert-principal-map
* ./stop_teleport.sh
  * stops all the teleport related containers
* ./clean_teleport.sh
  * call stop_teleport.sh 
  * removes temporary files
## Utility scripts in githome directory
* ./bash_crdb.sh
  * get a bash window to a crdb container, must pass node numer 1-3
* ./bash_crdb_client.sh
  * get a bash window to the crdb_client.  This client has the client tls files whereas the crdb nodes do not
* ./check_node_cert.sh
  * check the node certificate
* ./init.sh
  * initialize the cockroach cluster using crdb_init for the keys.  Not needed normally as crdb-init does this
* ./node.sh
  * get cockroach node status.  Pass node number 1-3 
* ./psql.sh
  * get postgesql psql shell. Must edit the script in scripts/test_psql.sh to change any of the connection settings 
* ./restart_psql.sh
  * restart psql without needing to stop/start teleport
* ./restart_teleport.sh
  * restart teleport but leaving the database in place
* ./sql.sh
  * get cockroach sql shell.  Pass node number 0-3.  Note this uses the crdb_init to resolve the client keys.  node 0 is actually haproxy
  
## Utility scripts in scripts subdirectory
* ./test_connect.sh
  * this only works using crdb_init.   Login with docker exec -it crdb_init bash
  * get a sql connection using the client keys can choose between node number 0-3. (0 is haproxy)  Also, can edit script to switch user and database
* ./curl.sh
  * this only works using one of the crdb nodes.   Login with docker exec -it crdb1 bash
  * test a curl connection using the client keys can choose between node number 0-3. (0 is haproxy)
