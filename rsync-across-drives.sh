
############################################
###  macOS rsync tool, NOT from gsutil ####
############################################

#  Skipping short hand for human readability given sensitivity
#  Mac and gsutil rsync have a few important flag differences,eg  -d, -e
# -n --dry-run  perform a dry run, simulating the changes and displaying results
# -v --verbose   verbose
# --delete  delete extraneous files from dest dirs

# --archive  same as -rlptgoD  (no -H)

# -r --recursive recurse through folders
# --links  copy symlinks as symlinks
# -p --perms  preserve permissions
# -t --times preserve times
# -g --group preserve group
# -o --owner preserve owner
# -D --devices preserve device files

rsync --verbose --dry-run --delete --archive <src> <dst>
