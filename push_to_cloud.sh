#!/usr/bin/env bash
# Use "env bash" instead of "bash" to pick from environment

# 2018 May 16 GCP backup script
# Need gsutil to run this
# .boto file in HOME can set encryption/decryption key

##### TODO  Confirm when selecting LIVE

# gsutil help options, 
# gsutil help <command> eg rsync
# -m multithread 
# -C continue if error
# -d delete files in destination not present in source
# -e skip over sym links
# -n [not used] perform a dry run, simulating the changes and displaying results
# -r recurse through folders

# Bash script options
# -z 

# $1 path to local directory
SRC_PATH=$1

# $2 gcp bucket name
DEST_BUCKET=$2

# $3 destination path
DEST_PATH=$3

# $4 Dry run? Or "LIVE"?
DRY_RUN=$4

#The -o operator is the logical OR operator. It returns true if either of its operands is true, and false only if both of its operands are false.
#The -z operator is the string length operator. It returns true if its operand is an empty string, and false otherwise.
if [ -z "$1" -o -z "$2" -o -z "$3" ]
    then 
        printf "Error: Parameters Missing. Please use these three\n"
        printf "<Source Path> <Destination Bucket> <Destination Directory>\n"
    else
        if [ "$DRY_RUN" == "LIVE" ]
            then
                printf "====LIVE SYNC====\n"
                gsutil -m rsync -C -d -e -r $SRC_PATH gs://${DEST_BUCKET}/${DEST_PATH}/
            else
                printf "====DRY RUN====\n"
                gsutil -m rsync -n -C -d -e -r $SRC_PATH gs://${DEST_BUCKET}/${DEST_PATH}/
        fi
        printf "Job Complete! \n"
fi

