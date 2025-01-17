
brew install minio/stable/minio
brew install minio/stable/mc
cd
mkdir .minio
mkdir .minio/logs
open up the we ui at localhost:9000
# un/pw is minioadmin/minioadmin
mc alias set local http://localhost:9000 minioadmin minioadmin
# change permissions
mc anonymous set public local/crdbackup
# test aws
 aws s3 ls s3://crdbackup --endpoint-url=http://localhost:9000 --no-sign-request

do a backup using local
# create bank database and table
cockroach workload init bank
./full_backup.sql

