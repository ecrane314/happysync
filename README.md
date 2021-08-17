happysync is a collection of scripts to perform archiving and [un]authenticated syncronization between local directories and Google Cloud Storage Buckets. It was written to sync large project files between multiple computers and additionally offer cloud backup.

#### 2021 Aug 17
GPG encrypting of, among other binaries, Google Takeout zip archives
Check your GDrive is clean, create your zip archive, download it locally.
Create your password and store it in your manager of choice
Proceed to terminal
Install gpg 
```brew install gpg```
Encrypt your file
#TODO fix ```gpg symmetric -a aes256 encrypt zip1``` 
Upload to bucket and copy to your external drive.

#### 2018 Dec 30
Added `cron_sample.sh` for reference and `cron.sh` to .gitignore as it contains system and user-specific info.  

#### 2018 Dec 9
Consolidating scripts and python
Video/Picture and file archiving will be two functions in this repo
Setting bucket to version will protect from deletion and limited modification means costs will stay low

#### 2018 Jul 4
Removing authentication and user directory artifacts from source
Pursuing 12 Factor... ask, "could I safely push this to public repo as-is?"

