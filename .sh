#!/bin/sh
lastday=$(date -d last-day +%Y%m%d)
output="/home/kintaiapp_user/schedual/output/"${lastday}
if [ ! -x $output ] ;then
  mkdir $output
fi
java -jar /home/kintaiapp_user/schedual/AttendanceCSV.jar -o ${output}
