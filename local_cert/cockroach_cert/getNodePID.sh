if [ $# -lt 1 ]; then
    echo 'must provide node index from 1 to 5'
    exit 1
fi
export NODE=node$1
echo 'node is' ${NODE} 'and pid is'
ps -ef | grep cockroach | grep -v grep | grep start | grep ${NODE} | awk '{print $2}' 


