#!/usr/bin/env bash
# use "env bash" instead of "bash" to pick from environment

source env/bin/activate
export GOOGLE_APPLICATION_CREDENTIALS="crane-gcp-fb9de3a8b0b4.json"

pip install -q --upgrade google-cloud-storage

python ./videoPush.py $1
