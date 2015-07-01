#docker enviroment setting

FILE=~/.profile
STAT=`boot2docker status`

if [ -z `set | grep DOCKER_HOST` ]; then
        echo "01:oops.. need environment add"
        DOCSTR=`boot2docker start > b2log.txt`
        if [ -e $FILE ]; then
          echo ".profile exist. add env"
          more b2log.txt | grep export >> $FILE
          else
          echo ".profile not exist. create file"
          more b2log.txt | grep export > $FILE
        fi
echo "02:setting variable."
source ~/.profile
fi
echo "= = = = environment phase complete = = = ="
