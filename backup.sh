tar cvpzf /backup.tgz.gz --exclude=/proc --exclude=/lost+found --exclude=/media --exclude=/backup.tgz --exclude=/mnt --exclude=/sys /

echo 'tar xvpfz /backup.tgz -C / 여기가 복원'
