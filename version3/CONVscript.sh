#!/bin/bash

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
 
 echo "using default setting: -30 +30"
 echo -n 030030 > P

fi



if [[ $# -lt 5 ]]
then
 echo -n 00 >> P
else
 echo -n $5 >> P
 if [[ $# -gt 5 ]]
 then
  echo -n $6 >> P
 else
  echo -n 0 >> P
 fi
fi

brandy -quit ditherEXP.basic
mv out.bmp "$2"

