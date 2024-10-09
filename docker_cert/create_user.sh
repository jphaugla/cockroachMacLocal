#!/bin/bash
# Copyright 2024 The Cockroach Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
if [ $# -lt 1 ]; then
    echo 'must provide node index from 0 to 3 with 0 being haproxy'
    exit 1
fi
export NODE=$1
export BASEVALUE=26256
export CLIENT_NODE=crdb_init
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE}
(( PORT = ${BASEVALUE} + ${NODE} ))
echo 'PORT is ' ${PORT}
echo 'CLIENT_NODE is ' ${CLIENT_NODE}
if [ ${NODE} = '0' ]; then
  export CONTAINER_CRDB=haproxy
else
  export CONTAINER_CRDB=crdb${NODE}
fi
echo 'CONTAINER_CRDB is ' ${CONTAINER_CRDB}

echo "create jhaugland role"
docker exec -it ${CLIENT_NODE} cockroach sql --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT} --execute "create user jhaugland WITH LOGIN PASSWORD 'jasonrocks';"
echo "grant to jhaugland user"
docker exec -it ${CLIENT_NODE} cockroach sql --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT} --execute "grant all on database defaultdb to jhaugland;"
docker exec -it ${CLIENT_NODE} cockroach sql --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT} --execute "grant admin to jhaugland;"
docker exec -it ${CLIENT_NODE} cockroach sql --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT} --execute "SET CLUSTER SETTING kv.rangefeed.enabled = true;"
