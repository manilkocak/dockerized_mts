#!/usr/bin/env bash

docker run \
--name az-test \
-v /Users/aboghoss/Downloads/MTS014_PR300_RERUN:/data \
-e projects='[ { "project_id": "MTS014 DMC AbbVie", "pert_name": "AbbVie-B12" } ]' \
-e AWS_BATCH_JOB_ARRAY_INDEX=0 \
-it cmap/clue-mts \
-i /data \
-o /data \
-t "1" \
-a "PR300"
