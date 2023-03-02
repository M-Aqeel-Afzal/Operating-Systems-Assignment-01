#!/bin/bash
# ! / bin / bash
# Script "Question Two"
#Muhammad Aqeel Afzal - i190650-D
touch logfile.txt


loopvar=0
while [ $loopvar -eq 0 ]     
do
echo "Menu for the valid input is "
printf "\n\nEnter:\n .1 (for Show permision)\n .2 (for String searching)\n .3 (even/odd Files )\n 4. (Date updation and log file) \n .5 (press any other key to exit) \n\n"
read  variable1
var4=$(date)
printf "option 1 selected Date and Time    $var4 " >> logfile.txt
if [ $variable1 -eq  1 ]
then 

echo "Enter the name of the file"
read filename 
echo "Enter the name of the file   $filename" >>logfile.txt
touch $filename.txt
echo "premision of the files before inversion"
echo "premision of the files before inversion"  >>logfile.txt
ls -al $filename.txt
ls -al $filename.txt >>logfile.txt
chmod 133 $filename.txt
echo "premision of the files After inversion"
echo "premision of the files After inversion" >>logfile.txt
ls -al $filename.txt
ls -al $filename.txt >>logfile.txt
#rm -f $filename.txt



elif [ $variable1 -eq  2 ]
then 
var4=$(date)
printf "option 2 selected Date and Time    $var4 " >> logfile.txt
echo "Enter the name of the file"
read aqeel
echo "Enter the name of the file   $aqeel" >>logfile.txt

 if [ -f "$aqeel" ]; then
    echo "Enter the string which you want to search"
read str1
echo "Enter the $str1   $filename" >>logfile.txt
b=0
i=1
while read line; do
if [ $str1 == $line ]
then
printf "congratulations string ( $line ) is founded on line: $i \n"
echo "line no where string is founded  $line" >>logfile.txt
b=1
i=$(( $i + 1 ))
fi
done < $aqeel
if [ $b -eq 0 ]
then 
echo " String not found"
fi
  else
    echo "File does not exist $aqeel"
  fi






elif [ $variable1 -eq 3 ]
then 
var4=$(date)
printf "option 3 selected Date and Time    $var4 " >> logfile.txt
echo "Enter number of line for writting"
    	read n
i=1 
for file_n in `ls $dir`; 
 do
   val=$(($i % 2))
    if [ $val -eq 0 ]  
    then
    	echo  $file_n "is even"
    	echo "even file $file_n" >>logfile.txt
    	head -$n $file_n >> dummy.txt
    elif [ $val -ne 0 ] 
     then 	
       echo  $file_n "is odd"
      echo "odd file $file_n" >>logfile.txt
       tail -$n $file_n >> dummy.txt
    fi
    i=$(( i+1 ));
done







elif [ $variable1 -eq 4 ]
	then 
var4=$(date)
printf "option 3 selected Date and Time    $var4 " >> logfile.txt
	echo "Enter file name:(e.g f.txt) "
	read fil
echo "Enter the name of the file   $fil" >>logfile.txt
	if [ -f "$fil" ]; then
		v=$(stat -c %y $fil | cut -d ' ' -f '1') 
		v1=$(stat -c %y $fil | cut -d ' ' -f '2') 





		var2=$(echo $v | tr "-" "\n")
		modiDate=0
		for i in $var2
		do
		    echo "$i"
		modiDate=$i
		done
		echo $modiDate
		modihours=0

		var2=$(echo $v1 | tr ":" "\n")

		for i in $var2
		do
		    echo "$i"
		if [ $modihours -eq 0 ]
		then
		modihours=$i
		fi
		done
		echo $modihours


		v=$(date)
		v=$(echo $v | tr " " "\n")
		currenthours=0
		currentdate=0
		k=1
		for i in $v
		do
		    echo "$i"
		if [ $k -eq 3 ]
		then
		currentdate=$i
		fi
		if [ $k -eq 4 ]
		then
		currenthours=$i
		fi
		k=$(( $k +1 ))
		done
		echo $currentdate


		var2=$(echo $currenthours | tr ":" "\n")
		currenthours=0
		for i in $var2
		do
		    echo "$i"
		if [ $currenthours -eq 0 ]
		then
		currenthours=$i
		fi
		done
		echo $modiDate
		echo $modihours
		echo $currentdate
		echo $currenthours
		if [ $(($currentdate - $modiDate)) -gt 1 ]
		then 
		echo "Date Updated"
echo "updated date   $currentdate" >>logfile.txt
		touch f.txt
		fi
		if [ $(($currenthours + $modihours)) -ge 24 ]
		then
		echo "Date Updated"
echo "updated date   $currentdate" >>logfile.txt
		touch f.txt
		fi
	else 
		echo " file does not exit"
		fi
	
else
echo "exit" >>logfile.txt
echo "terminated date" >>logfile.txt
exit
fi
done


