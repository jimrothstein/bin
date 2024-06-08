#  rsync_backup.sh
#  PURPOSE:  backup entire
#  REF:  SEE  archwiki, detailed




# run as root
sudo rsync -aAXHv --exclude='/dev/*'  --exclude='/proc/*' --exclude='/sys/*' \
     --exclude='/tmp/*' --exclude='/run/*' --exclude='/mnt/*' --exclude='/media/*' --exclude='/lost+found/' \
     --exclude='/home/*/.thumbnails/*'  \
     --exclude='/home/*/.cache/mozilla/*' \
     --exclude='/home/*/.cache/chromium/*' \
     --exclude='/home/*/.local/share/Trash/*' \ 
     / /media/jim/
