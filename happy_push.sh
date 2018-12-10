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



python ./videoPush.py $1


rsync -v -d -r -t <source> <destination>

# -v verbose to show file by file
# -d delete things in destination not present in source
# -r recurse through folders
# -t preserve modified times. otherwise will recopy everything each time
# -n [not used] perform a dry run, simulating the changes and displaying results

#!/bin/bash

#2018 May 16 GCP backup script
#Need gcloud sdk and in particular, gsutil to run this
#.boto file in HOME can set encryption/decryption key
#Music and Photos will take a long time, have those separate for now


# -m multithread -C continue if error -d delete at destination -n dry run
# -r copy recursively into directories
# -v no verbose option for rsync

BUCKET=$1
dir=(develop Documents Desktop Pictures)


gsutil -m rsync -C -d -e -r $HOME/${dir[0]} gs://${BUCKET}/${dir[0]}/
gsutil -m rsync -C -d -e -r $HOME/${dir[1]} gs://${BUCKET}/${dir[1]}/
gsutil -m rsync -C -d -e -r $HOME/${dir[2]} gs://${BUCKET}/${dir[2]}/
gsutil -m rsync -C -d -e -r $HOME/${dir[3]} gs://${BUCKET}/${dir[3]}/
echo "Job Success\n"
