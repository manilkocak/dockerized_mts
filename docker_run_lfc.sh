#!/usr/bin/env bash

docker run \
--name lfc-calculation \
-v /Users/aboghoss/Downloads/MTS016_PR300:/data \
-e AWS_BATCH_JOB_ARRAY_INDEX=0 \
-it aboghoss/clue-mts:dev \
-i /data \
-o /data \
-t "2" \
-a "0"
