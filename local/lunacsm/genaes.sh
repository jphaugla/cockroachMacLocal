WORKDIR=../thales-client
BINDIR=${WORKDIR}/bin/64
cd ${WORKDIR}
# ${BINDIR}/cmu generatekeypair -extractable=1 -mech=pkcs -modulusBits=2048 -publicExponent=65537 -labelPrivate jphpriv -labelPublic jphpub
${BINDIR}/cmu generatekey  -label jphaes
ret_code=$?
echo ${ret_code}
