#!/bin/bash

function add(){
	sum=$(($1+$2));
	echo $sum;
}

echo $(add 4 6);

echo "Hello world";

echo $(add 4 6);
echo $(add 5 6);
echo $(add 4 7);
echo $(add 2 8);
echo $(add 9 19);
echo $(add 4 6);
echo $(add 4 6);
echo $(add 4 6);
echo $(add 4 6);
