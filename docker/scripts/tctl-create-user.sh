#!/bin/bash
export TCTL_COMMAND="users add jphaugla --roles=editor,access --logins=root,jasonhaugland,ubuntu"
echo "running tctl ${TCTL_COMMAND}"
docker exec -it teleport tctl ${TCTL_COMMAND}
