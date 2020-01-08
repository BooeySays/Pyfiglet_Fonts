STARTDIR=$PWD

FONTDIR=$STARTDIR/fonts

FIGLETDIR="$(figlet -I 2)"
count=0
sudo clear;
cd $FONTDIR;

for fonts in *; do
	fontflf[count]=$fonts
	echo -e "   \033["$(echo $count | wc -L)"D$count) ${fontflf[count]}"
	count=$[$count + 1]
done

read -p 'Choose font to install: ' FONTOPT

USERSELECT="${fontflf[FONTOPT]}"

if [ -d $USERSELECT ]; then
	builtin cd $USERSELECT;
	. install.sh;
	builtin cd ..;
fi

cd $STARTDIR;
unset STARTDIR FONTDIR FIGLETDIR FONTOPT

