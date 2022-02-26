n=$1;
pow=2048;

for ((p=11;p<=$n;p++))
do
	echo 2^$p=$pow;
	pow=$((pow*2));
done
