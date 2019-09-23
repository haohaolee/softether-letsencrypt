#!/bin/sh

set -x

docker cp -L "${RENEWED_LINEAGE}/cert.pem" softethervpn:/usr/vpnserver/new.crt
docker cp -L "${RENEWED_LINEAGE}/privkey.pem" softethervpn:/usr/vpnserver/new.key

echo "restarting vpn...."
docker restart softethervpn 2> /dev/null

