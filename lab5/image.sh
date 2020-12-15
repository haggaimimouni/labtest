#!/bin/bash



for ((i=1;i<3;i++))
do
	var=`wget -O - http://xkcd.com/$i  | grep hotlink | grep -o 'https.*jpg' `
	echo $var
	wget $var -O $i.jpg
	eog $i.jpg

	
done

