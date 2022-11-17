#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Diagnostics"
TITLE="Support Access"
MENU="Choose one of the following options:"

menu ("Enable Support Access")
{
    echo "1 "Enable Support Access"
    echo "2 Enable Support Access for 1 day"
    echo "3 Enable Support Access for 2 days"
    echo "4 Enable Support Access for 1 week"
    echo "5 Enable Support Access for 2 weeks"
    echo "6 Enable Support Access for 1 month"
    echo "7 Enable Support Access for 2 months"
  exit 0
}

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
    do
    case $choice in
        1) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1";" && nservice supportaccess:start -ds nosync
        2) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1day';" && nservice supportaccess:start -ds nosync
        3) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2days';" && nservice supportaccess:start -ds nosync
        4) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1week';" && nservice supportaccess:start -ds nosync
        5) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2weeks';" && nservice supportaccess:start -ds nosync
        6) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1month';" && nservice supportaccess:start -ds nosync
        7) ;; # psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2months';" && nservice supportaccess:start -ds nosync
    esac
done
clear # clear after user pressed Cancel
