# cockroachMacLocal
scripts to run cockroachDB local on a Mac, Docker with colima, and minikube
## useful links
* [https://formulae.brew.sh/formula/colima](colima install on mac with homebrew)
* [https://sebastian.marsching.com/wiki/bin/view/Mac/Colima/](Colima memory and cpu settings)
* [link for installing colima with hombrew](https://smallsharpsoftwaretools.com/tutorials/use-colima-to-run-docker-containers-on-macos/)
* [Colima github](https://github.com/abiosoft/colima)
## a variety of scenarios are available in subdirectories 
* docker 
  * stop and start colima
  * run cockroachdb on one node without tls
  * run 3 cockroachdb nodes with ha_proxy without tls
  * run teleport with cockroachdb
  * run cockroach bank workload 
  * add enterprise license key using docker-compose
* docker_cert
  * stop and start colima
  * generate cockroach certificates
  * run 3 cockroachdb nodes with ha_proxy and tls
  * run cockroach bank workload 
* local
  * run cockroachdb nodes locally with unique port numbers on mac
  * run single node or multiple nodes
  * multi-region cockroachdb on one mac
  * run bank and movr workloads
* local_cert
  * run cockroachdb locally with certificates 
  * generate tls with openssl
  * generate tls with cockroach cert
* minikube
  * run cockroachdb kubernetes on minikube
  * can use config files, operator, or helm
* molt
  * run molt migration tool
