CRDB_IP=localhost
PORT=8080
PREFIX='/api/v2/'
curl -k --request POST --url "https://${CRDB_IP}:${PORT}${PREFIX}login/?username=jhaugland&password=jasonrocks" --header 'content-type: application/x-www-form-urlencoded'
