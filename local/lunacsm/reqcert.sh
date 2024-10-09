# ./bin/64/cmu requestcertificate -publicouid=0e8a040023000001ec6a0a00 -privateouid=0f8a040023000001ec6a0a00 -C=CA -L=Minneapolis -O=Cockroach -CN='Cockroach CA' -outputFile=jph888.pem -sha256withrsa
WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
# ${BINDIR}/cmu requestcertificate -privateouid=3193040023000001ec6a0a00 -C=CA -L=Minneapolis -O=Cockroach -CN='Cockroach CA' -outputFile=jph888.pem -sha256withrsa
${BINDIR}/cmu requestcertificate -C=CA -L=Minneapolis -O=Cockroach -CN=Jason -outputFile=jph888.pem -sha256withrsa
