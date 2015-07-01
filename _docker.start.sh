STAT=`boot2docker status`

if [ $STAT != running ]; then
        echo "boot2docker start"
        boot2docker poweroff
        boot2docker ssh 'sudo /etc/init.d/docker restart'
        boot2docker start
else
        echo "already running."

fi
