WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
${BINDIR}/cmu list -display=index,ouid,class,keyType,label,value,private,publicExponent
# ../thalen_client/bin/64/cmu list -private=1 -public=0
# ../thalen_client/bin/64/cmu list -public
