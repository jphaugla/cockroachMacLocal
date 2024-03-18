if [ $# -lt 1 ]; then
    echo 'must provide node index from 1 to 3'
    exit 1
fi
export NODE=$1
grep 'node starting' node${NODE}/logs/cockroach.log -A 11
