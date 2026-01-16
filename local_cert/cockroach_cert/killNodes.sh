# quick check
echo "pre-check of pids"
ps -ef | grep cockroach
pkill -f cockroach
pkill -f haproxy
sleep 2
pkill -9 -f cockroach
pkill -9 -f haproxy
echo "post-check of pids"
ps -ef | grep cockroach
