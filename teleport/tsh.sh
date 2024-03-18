#!/bin/bash
export TSH_COMMAND=$1
echo "running tsh ${TSH_COMMAND}"
docker exec -it teleport tsh ${TSH_COMMAND}
