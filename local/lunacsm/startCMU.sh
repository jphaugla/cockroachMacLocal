command=$1
WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
${BINDIR}/cmu ${command}
