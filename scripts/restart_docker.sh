#!/bin/sh

set -x

docker cp "${RENEWED_LINEAGE}/cert.pem" softethervpn:/usr/vpnserver/new.crt
docker cp "${RENEWED_LINEAGE}/privkey.pem" softethervpn:/usr/vpnserver/new.key

docker restart softethervpn

