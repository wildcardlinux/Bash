#!/bin/bash
service td-agent-bit status > /dev/null 2>&1
if [ $? != 0 ]
then
        service td-agent-bit restart > /dev/null && echo "$(date -u) Search for Fluent Bit error, restarting it" >> /tmp/fluent_bit_tracker.log
fi
