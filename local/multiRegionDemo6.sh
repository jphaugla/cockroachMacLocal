#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cockroach demo movr --sql-port 26257 --nodes=18 --demo-locality=region=us-east,zone=a:region=us-east,zone=b:region=us-east,zone=c:region=us-west,zone=b:region=us-west,zone=c:region=us-west,zone=d:region=us-central,zone=a:region=us-central,zone=d:region=us-central,zone=f,zone=d:region=us-south,zone=a:region=us-south,zone=d:region=us-south,zone=f:region=us-southeast,zone=a:region=us-southeast,zone=d:region=us-southeast,zone=f:region=us-northeast,zone=a:region=us-northeast,zone=d:region=us-northeast,zone=f 
