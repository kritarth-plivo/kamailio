#!/bin/bash

PACKAGE_GROUPS="postgres berkeley unixodbc presence ldap xml perl utils lua memcached snmpstats carrierroute xmpp cpl redis python geoip2 geoip sqlite json mono ims sctp java tls outbound websocket autheph dnssec kazoo cnxcc erlang rabbitmq"

apt install libpq-dev
apt install libxml2-dev
apt install libcurl4-gnutls-dev

make every-module group_include="kredis"

for grp in $PACKAGE_GROUPS; do
    echo "$grp"
    #make every-module group_include="k$grp"
done
