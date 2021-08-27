#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="STALIN-OS installer"
TITLE="Installation menu:"
MENU="Select your system:"

OPTIONS=(1 "STALIN-OS term edition"
         2 "STALIN-OS grap edition"
         3 "Exit")
         
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            clear
            cd ~
            git clone https://github.com/Dima-diep/STALIN-OS-term-edition &>/dev/null
            cd STALIN-OS-term-edition
            chmod 777 install.sh
            bash install.sh
            cd -
            cd -
            cd ../
            rm -rf STALIN-OS-Installer
            ;;
        2)
            clear
            cd ~
            git clone https://github.com/Dima-diep/STALIN-OS-grap-edition &>/dev/null
            cd STALIN-OS-grap-edition
            chmod 777 install.sh
            bash install.sh
            cd -
            cd -
            cd ../
            rm -rf STALIN-OS-Installer
            ;;
        3)
            clear
esac
