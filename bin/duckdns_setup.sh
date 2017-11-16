#!/bin/bash
set -xeo pipefail

if [ -z "${DUCKTOKEN}" ] ; then
    echo "Please export a shell variable DUCKTOKEN with the duckdns token"
    exit 1
fi

DUCKDIR="${HOME}/duckdns"
mkdir -p ${DUCKDIR}
echo "echo url=\"https://www.duckdns.org/update?domains=kokopi&token=${DUCKTOKEN}&ip=\" | curl -k -o ${DUCKDIR}/duck.log -K -" > ${DUCKDIR}/duck.sh
chmod +x ${DUCKDIR}/duck.sh

echo "*/5 * * * * ${DUCKDIR}/duck.sh >/dev/null 2>&1" | sudo tee -a /etc/crontab
