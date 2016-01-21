#!/bin/bash
rm -rf candidate.xml
user=test.txt
let count=0
let sum=0
cat <<EOF >candidate.xml
<?xml version="1.0" encoding="GBK"?>
<candidates>
EOF
mi=candidate.xml
while read line;do
        id=`echo $line|awk '{print $1}' `
        name=`echo $line|awk '{print $2}'`
        echo    " <candidate id=\"gonghao$id\" desc=\"$name\" count=\"1\" level=\"0\" />" >>$mi 
        let count=$count+1
done<$user
echo "</candidates>">>$mi
echo 文件已经生成
echo "本次添加员工个数$count"

