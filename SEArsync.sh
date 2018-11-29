rsync -v -d -r -t /Volumes/Crane\ Project/SEAsia_Thailand.imovielibrary/\
       	/Users/evancrane/Movies/SEA1

# -v verbose to show file by file
# -d delete things in destination not present in source
# -r recurse through folders
# -t preserve modified times. otherwise will recopy everything each time
# -n [not used] perform a dry run, simulating the changes and displaying results
