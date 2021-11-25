hive -e 'show tables in dmsperlego'|
while read line
do
 echo "TABLE NAME : $line"
  eval "hive -e 'describe dmsperlego.$line'" | grep "columnNAme"
done
