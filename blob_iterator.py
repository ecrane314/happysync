import google.cloud
from google.cloud import storage
from sys import argv

client = storage.Client()
BUCKET_NAME = argv[1]

def iter_blobs():
    try:
        bucket = client.get_bucket(BUCKET_NAME)
    except google.cloud.exceptions.NotFound:
        print('Sorry, that bucket does not exist!')

    blob_list = bucket.list_blobs()
    print(blob_list)
    print(blob_list)

if __name__=="__main__":
    iter_blobs()
