#!/bin/bash
# ! / bin / bash
# Script "Question one"
#Muhammad Aqeel Afzal - i190650-D

echo  $1         #Run time input (full,l,r)
echo $2          #run time input (size )
var1=$2


    #########            left printing    ###########
if [ $1 = "left" -o  $1 = "l" ]
then


echo " "
echo " "
var11=1
while [ $var11 -le $var1 ]                 ## upper portion printing
do
  counting2=1
  c=1
  while [ $c -le $var11 ]                  ## "*' printing
  do
	  printf "*"
	  counting2=$(( $counting2 + 2 )) 
	  c=$(( $c + 1 ))
	  done
	  printf "\n"                                ## new line printing
	  var11=$(( $var11 + 1 ))
  
 done
var1=$(( $var1 -1 ))
while [ $var1 -ge 1 ]                 ## lower portion printing
do
	  counting2=1
	  c=1
	  while [ $c -le $var1 ]                 ## "*" printing
		  do
		  	printf "*"
		    counting2=$(( $counting2 + 2 )) 
		    c=$(( $c + 1 ))
		  done
	  printf "\n"                 ## newline printing
	  var1=$(( $var1 -1 ))
  
done

fi
    #########            Right printing    ###########
if [ $1 = "right" -o  $1 = "r" ]              
	then

	echo " "
	var11=1
	var12=$var1
	s=0
	while [ $var11 -le $var1 ]              ## upper portion printing
		do
		  counting2=1
		  c=1
		  
		  counting1=1
		  c1=1
		  while [ $c1 -le $var12 ]
			  do
			  	printf " "                 ## space printing
			    counting1=$(( $counting1 + 2 )) 
			    c1=$(( $c1 + 1 ))
			  done
				  while [ $c -le $var11 ]
				  do
				  	printf "*"                    ## "*" printing              
				    counting2=$(( $counting2 + 2 )) 
				    c=$(( $c + 1 ))
				  done
		  printf "\n"                 ## new line printing
		  var11=$(( $var11 + 1 ))
		  var12=$(( $var12 - 1))
		done
	var1=$(( $var1 -1 ))
	var11=1
	var12=$var1
	while [ $var11 -le $var1 ]                 ## lower portion printing
		do
		  counting2=1
		  c=0
		  
		  counting1=1
		  c1=1
		  
		  while [ $c -le $var11 ]                 ## space printing
			  do
			  	printf " "
			    counting2=$(( $counting2 + 2 )) 
			    c=$(( $c + 1 ))
			  done
				  while [ $c1 -le $var12 ]
					  do
					  	printf "*"                 ## "*" printing
					    counting1=$(( $counting1 + 2 )) 
					    c1=$(( $c1 + 1 ))
					  done
				  printf "\n"                 ## new line printing
				  var11=$(( $var11 + 1 ))
				  var12=$(( $var12 - 1))
				done
	fi

    #########            Full printing    ###########
if [ $1 = "full" -o  $1 = "f" ]
	then

	echo " "
	var11=1
	var12=$var1
	var13=1
	s=0

	while [ $var13 -le $var1 ]              ## upper portion printing
		do
		  counting2=1
		  c=1
		  
		  counting1=1
		  c1=1
		  while [ $c1 -le $var12 ]          ## place printing
			  do
			  	printf " "
			    counting1=$(( $counting1 + 2 )) 
			    c1=$(( $c1 + 1 ))
			  done
			  while [ $c -le $var11 ]        ##" * " printing
				  do
				  	printf "*"
				    counting2=$(( $counting2 + 2 )) 
				    c=$(( $c + 1 ))
				  done
			  c3=1
			   printf "\n"             ##new line
			  var11=$(( $var11 + 2 ))
			  var13=$(( $var13 + 1 ))
			  var12=$(( $var12 - 1))
			done


	var12=1
	var14=$((2*$var1-1))
	var13=1
	n=0
	while [ $var13 -le $var1 ]              ##lower portion printing
		do
		  counting2=1
		  c=1
		  
		  counting1=1
		  c1=1
		  
		  while [ $c1 -le $var12 ]         # space printing
			  do
			  if [ $n -eq 1 ]
			  then
			  	printf " "
			  fi
			    counting1=$(( $counting1 + 2 )) 
			    c1=$(( $c1 + 1 ))
			  done
			  while [ $c -le $var14 ]     # "*" printing
				  do
				  	if [ $n -eq 1 ]
				  then
				  	printf "*"
				   fi 
				    counting2=$(( $counting2 + 2 )) 
				    c=$(( $c + 1 ))
				  done
		  c3=1
		  if [ $n -eq 1 ]
		  then
		   printf "\n"           ## new line
		   fi
		  n=1
		  
		  var13=$(( $var13 + 1 ))
		  var12=$(( $var12 + 1))
		  var14=$(( $var14 - 2))
		done
	fi


exit 0
