#!/usr/bin/env bash
# use "env bash" instead of "bash" to pick from environment

#Run the sync with the following arguments
# $1 json api key for bucket in your project
# $2 destinaton bucket
# $3 local source directory

#Turn on virtualenv inside folder created from git clone
source env/bin/activate

#set credentials from argument
export GOOGLE_APPLICATION_CREDENTIALS=$1

#ensure gcs module is installed
pip install -q --upgrade google-cloud-storage

python pushToGCS.py $1 $2 $3

