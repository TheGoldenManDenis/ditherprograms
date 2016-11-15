#if [[ -e "$2" ]]
#then
# echo "file exists" 
# exit
#fi

cp "$1" in.bmp
brandy -quit dither.basic
mv out.bmp "$2"

