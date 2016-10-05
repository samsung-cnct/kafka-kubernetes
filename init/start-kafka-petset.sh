#!/bin/bash

#  kubernetes only static broker id assignment
if [[ -n "$KUBE_POD_NAME" ]]; then
    KAFKA_BROKER_ID=`echo $KUBE_POD_NAME | cut -d \\- -f 2`
    if [[ "$KAFKA_BROKER_ID" =~ ^-?[0-9]+$ ]]; then  #  tests if broker id is an integer
        export KAFKA_BROKER_ID=$KAFKA_BROKER_ID
    else
        unset KAFKA_BROKER_ID
    fi
fi

#  pass control off to kafka-docker startup script
start-kafka.sh