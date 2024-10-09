ouid=$1
WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
${BINDIR}/cmu delete -ouid=${ouid} 
# ../thalen_client/bin/64/cmu list -private=1 -public=0
# ../thalen_client/bin/64/cmu list -public
