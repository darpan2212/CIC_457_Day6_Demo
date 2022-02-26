cnt=0;

while [[ $cnt -lt 10 ]]
do
	echo $cnt;
	((cnt++));
done

echo "------------------------------------"

cnt=0
while (($cnt<10))
do
	echo $cnt;
	((cnt++));
done
