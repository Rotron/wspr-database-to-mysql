#!/bin/bash

START=2008-03 
while [ "$START" != 2017-02 ]; do
 echo $START 
 wget -P data/ http://wsprnet.org/archive/wsprspots-${START}.csv.gz 
 START=$(date -j -v +1m -f "%Y-%m" ${START} +%Y-%m) 
done
#gsutil -m cp /etc/wsprnet/* gs://wsprnet/