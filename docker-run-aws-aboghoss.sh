#!/usr/bin/env bash

docker run \
--rm \
--name drc-test \
-v /Users/aboghoss/Downloads/MTS016:/data \
-e projects='[ { "project_id": "MTS016_VALIDATION_COMPOUND_INTERNAL", "pert_name": "AZ-628", "compound_plate": "PMTS038" } ]' \
-e AWS_BATCH_JOB_ARRAY_INDEX=0 \
aboghoss/clue-mts:dev  \
-i /data \
-o /data \
-t "1" \
-a "0"
