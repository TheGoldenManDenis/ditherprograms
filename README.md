# ditherprograms
A family of BBC Basic programs I wrote which convert pictures to reduced colours with some crosshatching/dithering

To run these you'll need a linux system with imagemagick and brandy (BBC Basic interpreter) installed.
The input images must be a width which is a multiple of 4, otherwise the output result looks weird. I don't know why that happens.

Download "ditherprograms_.tar.xz" and extract it to a folder, then use the scripts to operate the program, according to these instructions:

################### For versions 1 and 4 ###################
./CONVscript.sh input.[png/jpg/anything] output.bmp

################### For version 2 ###################
./CONVscript.sh input.[anything] output.bmp [P1] [P2] [P3] [P4]

Where P1, P2, P3, P4 are each numbers from 0 to 999. The default setting is 15 100 140 200

################### For version 3 ###################
./CONVscript.sh input.[anything] output.bmp [P1] [P2] [P3] [P4]

Where P1 and P2 are numbers from 0 to 999, and P3, P4 are either 0 or 1. The default setting is 30 30 0 0

Edit the "PAL" file with a text editor to change the colour palette that it uses.
