#!/bin/sh

#Create Data directories if it's not already created and mounted...
mkdir -m 777 /media/data/
mkdir -m 777 /media/data/log

#Clear down the log files
rm /media/data/log/Hakchi_push_saves_to_usb.log

echo "$(tput setaf 2)  " > /media/data/log/Hakchi_push_saves_to_usb.log
echo "======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo " " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)                  MM                      " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)                MM  MM                    " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)              MM      MM                  $(tput setaf 2)User: $(tput setaf 7)$USER" >> /media/data/log/Hakchi_push_saves_to_usb.log
if [ -z "$HOSTNAME" ]
then
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7) Not Applicable" >> /media/data/log/Hakchi_push_saves_to_usb.log
else
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7)$HOSTNAME" >> /media/data/log/Hakchi_push_saves_to_usb.log
fi
echo "$(tput setaf 3)  MMMMMMMMMM    MM  MM    MMMMMMMMMM      $(tput setaf 2)OS: $MODNAME $(tput setaf 7)$(uname -s -m)"  >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)    MM          MM  MM          MM        $(tput setaf 2)Kernel: $(tput setaf 7)$(uname -r)" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)      MM                      MM          $(tput setaf 2)Terminal Build: $(tput setaf 7) v0.1 (alpha)" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)        MM                  MM            $(tput setaf 2)Shell: $(tput setaf 7)SHELL" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)          MM              MM              $(tput setaf 2)ModPath: $MODPATH" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)        MM      MMMMMM      MM            $(tput setaf 2)Installed Binaries: $(tput setaf 7)$(ls /bin/ -1 | wc -l)" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)      MM    MMMM      MMMM    MM          " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)    MM  MMMM              MMMM  MM        " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)  MMMMMM                      MMMMMM      " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 2)  " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "    __  _____    __ __________  ______   ________________  __  ________   _____    __ " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "   / / / /   |  / //_/ ____/ / / /  _/  /_  __/ ____/ __ \/  |/  /  _/ | / /   |  / / " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "  / /_/ / /| | / ,< / /   / /_/ // /     / / / __/ / /_/ / /|_/ // //  |/ / /| | / /  " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo " / __  / ___ |/ /| / /___/ __  // /     / / / /___/ _, _/ /  / // // /|  / ___ |/ /___" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "/_/ /_/_/  |_/_/ |_\____/_/ /_/___/    /_/ /_____/_/ |_/_/  /_/___/_/ |_/_/  |_/_____/" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo " " >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 7)                          http://github.com/swingflip" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log	   
echo "$(tput setaf 7)Disk mounting information:" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(df)" >> /media/data/log/Hakchi_push_saves_to_usb.log
#top has a big overhead for some reason on the mini. Doesn't give much useful information anyway...
#echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log	
#echo "$(tput setaf 7)CPU analysis information:" >> /media/data/log/Hakchi_push_saves_to_usb.log
#echo "$(tput setaf 7)$(top | head -n 15)" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 7)RAM analysis information:" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 7)$(free)" >> /media/data/log/Hakchi_push_saves_to_usb.log
#echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
#echo "$(tput setaf 3)Installed Binaries analysis:" >> /media/data/log/Hakchi_push_saves_to_usb.log
#echo "$(tput setaf 7)$(ls -l /bin/)" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)Running DanTheMan827's transfer saves to USB script!!" >> /media/data/log/Hakchi_push_saves_to_usb.log
mountpoint -q "$mountpoint/var/lib/clover/profiles/0" && umount "$mountpoint/var/lib/clover/profiles/0" >> /media/data/log/Hakchi_push_saves_to_usb.log
rm -r "$mountpoint/media/hakchi/saves" >> /media/data/log/Hakchi_push_saves_to_usb.log
mv "$mountpoint/var/lib/clover/profiles/0" "$mountpoint/media/hakchi/saves" >> /media/data/log/Hakchi_push_saves_to_usb.log
mkdir "$mountpoint/var/lib/clover/profiles/0" >> /media/data/log/Hakchi_push_saves_to_usb.log
sync >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 3)Finished DanTheMan827's transfer saves to USB script" >> /media/data/log/Hakchi_push_saves_to_usb.log
echo "$(tput setaf 7)" >> /media/data/log/Hakchi_push_saves_to_usb.log
