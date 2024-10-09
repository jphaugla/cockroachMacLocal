# need to change the session in here and then can run all hte other commands
command=$1
CRDB_IP=localhost
SESSION='CIGA8q/g8pyDDhIQQeV9jGNPmximU5h6qZHzng=='
PORT=8080
PREFIX='/api/v2/'
curl -k -H "X-Cockroach-API-Session: ${SESSION}" https://${CRDB_IP}:${PORT}${PREFIX}${command}/
