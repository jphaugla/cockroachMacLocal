#!/bin/bash
export TCTL_COMMAND=$1
echo "running tctl ${TCTL_COMMAND}"
docker exec -it teleport tctl ${TCTL_COMMAND}
