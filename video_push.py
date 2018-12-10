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

if __name__=="__main__":
	if len(argv) == 3:
		videoPush(argv[1], argv[2])
	elif len(argv) == 2:
		videoPush(argv[1])

