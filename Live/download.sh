#!/bin/bash

URL="https://files.intelie.com/live"
VERSION=3.23.0
URL_USER=delivery
URL_PASS='C3moSrH-"T'


wget --quiet --user ${URL_USER} --password ${URL_PASS} ${URL}/${VERSION}/ -O - | while read x; do

    FILE=$(echo $x | egrep -e '(deb|jar)' | awk -F '">' '{print $4}' | awk -F '<' '{print $1}')

    if [ ! -z ${FILE} ]; then
    wget --user ${URL_USER} --password ${URL_PASS} ${URL}/${VERSION}/${FILE} -O ./${FILE}
    fi

done