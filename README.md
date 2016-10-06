# rsync-between-two-folders


This script will provide a "any way" rsync between two folders. (only keeping the most recent file and never deleting any file) [In my case is exatly that what i need, if you wish delete, you can add a -delete in the rsync line inside the script]

In my case I used the riofs to mount one folder and sync this folder with a wordpress images folder.
For made the riofs I used something like that: 

#create S3 folder on /tmp
sudo mkdir /tmp/project_name_uploads

#mount S3 folder for wordpress
sudo /usr/local/bin/riofs --uid=48 --gid=48 --fmode=0777 --dmode=0777 -o "allow_other" -c /home/apache/.config/riofs/riofs.conf.xml s3-folder-name /tmp/project_name_uploads >> /tmp/S3_log.txt


In the apache user I added that to crontab:

#RSYNC S3 with uploads folder
*/1 * * * * /home/apache/rsync_updates/rsync_update.sh > /dev/null 2>&1
