#!/bin/sh

set -x

docker cp -L "${RENEWED_LINEAGE}/cert.pem" softethervpn:/usr/vpnserver/new.crt
docker cp -L "${RENEWED_LINEAGE}/privkey.pem" softethervpn:/usr/vpnserver/new.key

docker restart softethervpn

