#!/usr/bin/python

from google.cloud import storage
from sys import argv

def videoPush(target="evancrane", dir=0):
	client = storage.Client()
	bucket = client.get_bucket(target)

	iter = bucket.list_blobs()
	for i in bucket.list_blobs(prefix=dir):
		print (i)
	print("target: " + target)
	print("prefix: " + dir)


def videoPush():
        #TODO: need to authenticate with key, not sdk, it's in $1 from shell
	client = storage.Client()
    bucket = client.getBucket(argv[2)

        #TODO: This is for command line, I need the python equivalent 
        #now that I have a bucket object.
        gsutil -m rsync argv[3] gs://argv[2]/argv[3]

	for i in bucket:
		print (i)
	print("Got to the end")

if __name__=="__main__":
	if len(argv) == 3:
		videoPush(argv[1], argv[2])
	elif len(argv) == 2:
		videoPush(argv[1])

