#!/bin/bash

mkdir -p /var/lib/live/plugins

for x in *.jar; do
    mv ${x} /var/lib/live/plugins
done

chown live.intelie -R /var/lib/live

cp live.properties /opt/intelie/live/conf/live.properties
cp license.lic /opt/intelie/live/conf/license.lic

chown live.intelie -R /opt/intelie

