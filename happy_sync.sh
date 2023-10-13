#!/usr/bin/env bash
# Use "env bash" instead of "bash" to pick from environment

# 2018 May 16 GCP backup script
# Need gsutil to run this
# .boto file in HOME can set encryption/decryption key

# Create a file .backup_config in the home directory including
#export BUCKET=evancrane
#export CURRENT_DIR=$(basename "$(pwd)")
source $HOME/.backup_config

# gsutil help options, 
# -m multithread
# gsutil help <command> eg rsync
# -C continue if error
# -d delete files in destination not present in source
# -e skip over sym links
# -n [not used] perform a dry run, simulating the changes and displaying results
# -r recurse through folders

printf "LIVE SYNC\n"
printf "gs://$BUCKET/$CURRENT_DIR/"

# Throws  invalid_grant: Bad Request when token is expired. gcloud auth login to fix
#gsutil -m rsync -C -e -r -n  . gs://evancrane/Audio/ 
gsutil -m rsync -C -e -r -n . gs://${BUCKET}/${CURRENT_DIR}/
printf "\nJob Complete! \n"


#printf "====DRY RUN====\n"
#gsutil -m rsync -n -C -d -e -r $SRC_PATH gs://${DEST_BUCKET}/${DEST_PATH}/

