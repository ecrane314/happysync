from google.cloud import storage
import os

client = storage.Client()
BUCKET_NAME = argv[1]

def iter_blobs():
    try:
        bucket = client.get_bucket(BUCKET_NAME)
    except google.cloud.exceptions.NotFound:
        print('Sorry, that bucket does not exist!')

    blobl = bucket.list_blobs()
    print(blobl.next())
    print(blobl.next())

if __name__=="__main__":
    iter_blobs()
