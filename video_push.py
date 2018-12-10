#!/usr/bin/python

from sys import argv

import google.cloud
from google.cloud import storage

BUCKET_NAME = argv[1]

def video_push(target=BUCKET_NAME, dir=0):
    client = storage.Client()
    bucket = client.get_bucket(target)
    bucket = client.get_bucket(argv[2])

    iter = bucket.list_blobs()
    for i in bucket.list_blobs(prefix=dir):
        print(i)
        print("target: " + target)
        print("prefix: " + dir)

    for i in iter:
        print (i)

    print("Got to the end")

    #TODO: Determine correct assignment of bucket, target or argv
    #TODO: need to authenticate with key, not sdk, it's in $1 from shell
    #TODO: Need the python equivalent now that I have a bucket object.
    #gsutil -m rsync argv[3] gs://argv[2]/argv[3]


def iter_blobs(client):
    try:
        bucket = client.get_bucket(BUCKET_NAME)
    except google.cloud.exceptions.NotFound:
        print('Sorry, that bucket does not exist!')

    blob_list = bucket.list_blobs()
    print(blob_list)
    print(blob_list)

if __name__ == "__main__":
    if len(argv) == 3:
        video_push(argv[1], argv[2])
    elif len(argv) == 2:
        video_push(argv[1])
