#!/bin/bash
for k in $( seq 1 500 )
do
	echo "page "${k}" start"
	echo "---------------------"
	curl http://www.allitebooks.com/page/${k}/ | grep bookmark | grep h2 >> result.txt
done