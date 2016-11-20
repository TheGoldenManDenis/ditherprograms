#!/bin/bash

if [[ $# -eq 0 ]]
then
 echo "no arguments"
 exit
fi


if [[ $# -gt 2 ]]
then
 
 if [[ -e P ]]
 then
  rm P
 fi

 for i in $3 $4
 do

  if [[ $i -lt 0 ]]
  then
   echo -n "-" >> P
   let i=i*-1
  fi

  if [[ $i -gt 99 ]]  
  then
   echo -n $i >> P
  else
   if [[ $i -lt 10 ]]
   then
    echo -n 00$i >> P
   else
    echo -n 0$i >> P
   fi
  fi

 done

else
 
 echo "using default setting: -30 30 "
 echo -n -030030 > P

fi

cp "$1" in.bmp

brandy -quit ditherEXP.basic

if [[ $# -gt 1 ]]
then
 mv out.bmp "$2"
fi