# generate CRDB certs and run with those certs
* [link for installing colima with hombrew](https://smallsharpsoftwaretools.com/tutorials/use-colima-to-run-docker-containers-on-macos/)
* [Colima github](https://github.com/abiosoft/colima)
## Steps
* ./init_teleport.sh
  * handles initializing teleport by doing the following steps
    * builds the crdb_init image using docker-compose build
    * ./build_keys.sh
      * this builds the certificates using a crdb container
    * ./build_psql.sh
      * this builds the a client psql container for debugging connectivity
* ./start_teleport.sh
  * starts crdb containers, crdb client container, psql, and teleport
* ./stop_teleport.sh
  * stops all the teleport related containers
* ./clean_teleport.sh
  * call stop_teleport.sh 
  * removes temporary files
## Utility scripts
* ./bash_crdb.sh
  * get a bash window to a crdb container, must pass node numer 1-3
* ./bash_crdb_client.sh
  * get a bash window to the crdb_client.  This client has the client tls files whereas the crdb nodes do not
* ./check_node_cert.sh
  * check the node certificate
* ./init.sh
  * initialize the cockroach cluster using crdb_init for the keys
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
  
