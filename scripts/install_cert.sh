#!/usr/bin/env bash

if [ -f new.crt ] && [ -f new.key ]; then
    echo "installing new cert..."
    cert=$( sed '/----/d'  new.crt | tr -d '\n' )
    key=$( sed '/----/d'  new.key | tr -d '\n' )

    echo "$(sed "s|byte ServerCert.*|byte ServerCert $cert|" vpn_server.config)" > vpn_server.config
    echo "$(sed "s|byte ServerKey.*|byte ServerKey $key|" vpn_server.config)" > vpn_server.config

    rm -f new.crt
    rm -f new.key
fi

