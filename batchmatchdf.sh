#!/bin/bash

# IBM MDM Batch Match Execution Script

/opt/IBM/MDM/scripts/batchmatch.sh \
  -d /opt/IBM/MDM \
  -u mdmuser \
  -p mdmpassword \
  -i /home/youruser/data/persondata.unl \
  -r /home/youruser/review/person_review.rev \
  -a /home/youruser/config/person_automerge_profile.xml \
  -m PERSON \
  -s Batch \
  -t Default \
  -l /home/youruser/logs/batchmatch_log.txt \
  -b 5000
