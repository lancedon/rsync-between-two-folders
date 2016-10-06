#!/bin/bash -l

#RSYNC S3 folder with uploads
/usr/bin/rsync -atpur /tmp/ayudamistica_uploads/*.jpg  /var/www/html/blog/wp-content/uploads/ > /dev/null 2>&1
/usr/bin/rsync -atpur /tmp/ayudamistica_uploads/*.jpeg  /var/www/html/blog/wp-content/uploads/ > /dev/null 2>&1
/usr/bin/rsync -atpur /tmp/ayudamistica_uploads/*.gif  /var/www/html/blog/wp-content/uploads/ > /dev/null 2>&1
/usr/bin/rsync -atpur /tmp/ayudamistica_uploads/*.png  /var/www/html/blog/wp-content/uploads/ > /dev/null 2>&1

#sync S3 folder with uploads/img
/usr/bin/rsync -atpur /tmp/ayudamistica_uploads/img/  /var/www/html/blog/wp-content/uploads/img/ > /dev/null 2>&1
 

#RSYNC uploads with S3
/usr/bin/rsync -atpur /var/www/html/blog/wp-content/uploads/*.jpg  /tmp/ayudamistica_uploads/  > /dev/null 2>&1
/usr/bin/rsync -atpur /var/www/html/blog/wp-content/uploads/*.jpeg  /tmp/ayudamistica_uploads/  > /dev/null 2>&1
/usr/bin/rsync -atpur /var/www/html/blog/wp-content/uploads/*.gif  /tmp/ayudamistica_uploads/  > /dev/null 2>&1
/usr/bin/rsync -atpur /var/www/html/blog/wp-content/uploads/*.png  /tmp/ayudamistica_uploads/  > /dev/null 2>&1

#sync uploads/img with S3 folder
/usr/bin/rsync -atpur /var/www/html/blog/wp-content/uploads/img/ /tmp/ayudamistica_uploads/img/ > /dev/null 2>&1
