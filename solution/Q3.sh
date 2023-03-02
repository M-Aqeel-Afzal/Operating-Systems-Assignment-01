#!/bin/bash
# ! / bin / bash
# Script to see
echo "Enter the name of Main Directory"
read main_dir
 mkdir $main_dir
cd $main_dir
echo "Enter Number of Sub_directories"
read no

i=1
while [ $i -le $no ]
do

echo "creating Sub_Directory: $i" 
 mkdir "dir_$i"
cd "dir_$i"
echo "Enter the nunber of files you want to create in the directory: $i"
read no1
j=1
while [ $j -le $no1 ]
do
echo "creating file:$j in directory $i please enter extention of file"
read fil
touch "F_$j.$fil"
j=$(( $j + 1 ))
done
cd -
i=$(( $i + 1 ))
done
l1=0
while [ $l1 -eq 0 ]
do 
printf "\n\n"
echo " please enter any one choice: "
printf "\n\n"
echo " Farword Move(press:f) "
echo " Backword(press:b) "
echo " exit (press:e) "
printf "\n\n"
read choice
if [ $choice == 'f' -o $choice == 'F' ]
then
echo " creating extension files "
mkdir java
mkdir cc
mkdir cpp
mkdir txt
mkdir others


i=1
while [ $i -le $no ]
do
for entry in `ls "dir_$i"`; do
    echo $entry
var1=$(echo $entry | tr "." "\n")

		for k in $var1
		do
		    echo "key  -----------$k"

done

if [ $k == "java" ]
then
cd java
touch "dir_$i-$entry"
cd -
elif [ $k == "cc" ]

then
cd cc
touch "dir_$i-$entry"
cd -
elif [ $k == "txt" ]
then
cd txt
touch "dir_$i-$entry"
cd -
elif [ $k == "cpp" ]
then
cd cpp
touch "dir_$i-$entry"
cd -
elif [ $k == "others" ]
then
cd others
touch "dir_$i-$entry"
cd -
fi
done
i=$(( $i + 1 ))
done

i=1
while [ $i -le $no ]
do
rm -rf "dir_$i"
i=$(( $i + 1 ))
done
elif [ $choice == 'B' -o $choice == 'b' ]
then



ls aqeel
for entr in `ls "cc"`; do
    echo $entr
dr=0
var1=$(echo $entr | tr "-" "\n")

		for k in $var1
		do
		    echo "key  -----------$k"
if [ $dr -eq 0 ]
then
dr=$k
else
mkdir $dr
cd $dr
touch $k
cd -
rm -rf cc
fi

done

done


for entr in `ls "txt"`; do
    echo $entr
dr=0
var1=$(echo $entr | tr "-" "\n")

		for k in $var1
		do
		    echo "key  -----------$k"
if [ $dr -eq 0 ]
then
dr=$k
else
mkdir $dr
cd $dr
touch $k
cd -
rm -rf txt
fi

done

done



for entr in `ls "cpp"`; do
    echo $entr
dr=0
var1=$(echo $entr | tr "-" "\n")

		for k in $var1
		do
		    echo "key  -----------$k"
if [ $dr -eq 0 ]
then
dr=$k
else
mkdir $dr
cd $dr
touch $k
cd -
rm -rf cpp
fi

done

done

for entr in `ls "others"`; do
    echo $entr
dr=0
var1=$(echo $entr | tr "-" "\n")

		for k in $var1
		do
		    echo "key  -----------$k"
if [ $dr -eq 0 ]
then
dr=$k
else
mkdir $dr
cd $dr
touch $k
cd -
rm -rf others
fi

done

done


for entr in `ls "java"`; do
    echo $entr
dr=0
var1=$(echo $entr | tr "-" "\n")

		for k in $var1
		do
		    echo "key  -----------$k"
if [ $dr -eq 0 ]
then
dr=$k
else
mkdir $dr
cd $dr
touch $k
cd -
rm -rf java
fi

done

done

else
exit
fi

done
cd -

