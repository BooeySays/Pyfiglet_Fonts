STARTDIR=$PWD
FONTDIR=$STARTDIR/fonts
FIGLETDIR="$(figlet -I 2)"

sudo clear;
cd $FONTDIR;
echo -e "Copying files"

sudo cp *.flf $FIGLETDIR

echo -e "finished"

builtin cd $STARTDIR
unset STARTDIR FONTDIR FIGLETDIR

