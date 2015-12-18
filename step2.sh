#! /bin/bash  
  
for LINE in `cat result.txt`  
do   
		count1=`cat res1.txt | wc -l`
		echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		echo $count1
        echo $LINE start
        echo    
        curl --connect-timeout 10 -m 15 $LINE | grep '.pdf"' >> res1.txt
        count2=`cat res1.txt | wc -l`
        if [ $count1 -eq $count2 ]; then echo $LINE >> timeout.log
        fi

done