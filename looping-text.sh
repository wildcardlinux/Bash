#!/bin/bash
COUNT=0
while [ $COUNT -lt 100 ]
do
  echo 'looping' >> /tmp/error-02.log
  sleep 1
  let COUNT=COUNT+1
done
exit
