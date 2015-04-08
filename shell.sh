#!/bin/bash

x=`cat conf.ini`
while true
do
wget -q -P student meteo.by
cat student/index.html | grep -m 1 -n6 '<p class="t ">' | grep -o '[-+][0-9]\+'

sleep $x
done