#if [[ -e "$2" ]]
#then
# echo "file exists" 
# exit
#fi

cp "$1" in.bmp
brandy -quit ditherV4.basic
mv out.bmp "$2"

