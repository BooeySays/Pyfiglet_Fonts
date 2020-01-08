FIGLETDIR="$(figlet -I 2)"
BASENAME="$(basename $PWD)"
clear
echo -e "\033[00;01m[ \033[38;5;190mWAIT\033[00;01m ] \033[mCopying $BASENAME files to \033[03;36m$FIGLETDIR\033[m"
sudo cp * "$FIGLETDIR"
sleep 1
echo -e "\r\033[00;01m[ \033[38;5;46mDONE\033[00;01m ] \033[mCopying $BASENAME files to \033[03;36m$FIGLETDIR\033[m"
echo -e "\n[ Press any key to continue ]"
read
unset FIGLETDIR BASENAME