#!/bin/env bash 

FIRST_LINE="      ／l、"
SECOND_LINE="    （ﾟ､ ｡ ７ " 
THIRD_LINE="    ⠀ l、ﾞ~ヽ"
FOURTH_LINE="    ⠀ じしf_, )ノ"

G='\e[0;32m'
C='\e[0;34m'
B='\e[0;34m'
BL='\e[0;37m'
R='\e[0;31m'
P='\e[0;35m'
Y='\e[0;33m'
RB='\e[1;31m'
RESET='\e[0m'
BOLD='\e[1m'

tput clear

main ()
{
  echo -e "$FIRST_LINE"
  echo -e "$SECOND_LINE"
  echo -e "$THIRD_LINE"
  echo -e "$FOURTH_LINE"
 # echo -e "  ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁"

  echo 
  info
}

help ()
{
  echo "Try execute the command again with no parameters"
}

info ()
{
  local user=$USER
  local wm=$DESKTOP_SESSION
  local pkg=$(pacman -Qq | wc -l)
  local os=$(lsb_release -sd)
  os=${os##[\"\']}
  os=${os%%[\"\']}

  echo -e "$RESE$B$BOLD     $user@$HOSTNAME"
  echo 
  echo -e "$R$BOLD    User $RESET $BL$user"
  echo -e "$G$BOLD    OS   $RESET $BL$os"
  echo -e "$P$BOLD    WM   $RESET $BL$wm"
  echo -e "$Y$BOLD    Pkg  $RESET $BL$pkg"
  echo 

}


case $1 in 
  "")
    main
    ;;
  "info")
    info
    ;;
  -h|--help)
    help
    ;;
esac




