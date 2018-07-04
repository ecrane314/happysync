#!/usr/bin/python
from google.cloud import storage
import sys
#import os?

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
	videoPush()
