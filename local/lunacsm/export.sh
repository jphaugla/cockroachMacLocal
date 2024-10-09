WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
${BINDIR}/cmu export -ouid=3193040023000001ec6a0a00 -outputfile=/home/ec2-user/jph.tmp
# this seems to work but not sure where file went
# ./bin/64/cmu export -ouid='0f8a040023000001ec6a0a00' -outputfile=jph.tmp
# ./bin/64/cmu export -ouid=0f8a040023000001ec6a0a00 -outputfile=/home/ec2-user/jph.tmp
