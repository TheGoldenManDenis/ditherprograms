#!/bin/bash

if [[ $# -eq 0 ]]
then
 echo "no arguments"
 exit
fi

rm in.bmp
convert -resize 320x256 "$1" temp.png
composite -gravity center temp.png template.png new.png
convert new.png -type truecolor in.bmp



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



brandy -quit ditherEXP.basic

if [[ $# -gt 1 ]]
then
 mv out.bmp "$2"
fi

