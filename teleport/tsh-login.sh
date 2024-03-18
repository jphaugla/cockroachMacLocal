#!/bin/bash
export TSH_COMMAND="login --proxy=localhost --user=jphaugla --insecure"
echo "running tsh ${TSH_COMMAND}"
docker exec -it --user root teleport tsh ${TSH_COMMAND}
