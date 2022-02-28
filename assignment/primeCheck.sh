#!/bin/bash

function checkPrimeNumber() {
	num=$1;
	isPrime=1;
	for  ((i=2;i<=$((num/2));i++))
	do
		if [ $((num%i)) -eq 0 ]
		then
			isPrime=0;
			break;
		fi
	done
	echo $isPrime;
}

read -p "Enter the number to check prime : " number;

for ((i=3;i<=$number;i++))
do
	result=$(checkPrimeNumber $i);
	if [ $result -eq 1 ]
	then
	   echo $i;
	fi
done
