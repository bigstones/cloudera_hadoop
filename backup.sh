tar cvpzf /backup.tgz.gz --exclude=/proc --exclude=/lost+found --exclude=/media --exclude=/backup.tgz --exclude=/mnt --exclude=/sys /

echo 'tar xvpfz /backup.tgz -C / 이 명령이 복원'
