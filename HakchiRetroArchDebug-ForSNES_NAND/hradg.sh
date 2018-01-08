#!/bin/sh

mkdir -m 777 /var/tmp/RetroArchConfig

#Clear down the log files
rm /var/tmp/Hakchi_retroarch_debug.log
rm -rf /var/tmp/RetroArchConfig/*

echo "$(tput setaf 2)  " > /var/tmp/Hakchi_retroarch_debug.log
echo "======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log
echo " " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)                  MM                      " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)                MM  MM                    " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)              MM      MM                  $(tput setaf 2)User: $(tput setaf 7)$USER" >> /var/tmp/Hakchi_retroarch_debug.log
if [ -z "$HOSTNAME" ]
then
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7) Not Applicable" >> /var/tmp/Hakchi_retroarch_debug.log
else
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7)$HOSTNAME" >> /var/tmp/Hakchi_retroarch_debug.log
fi
echo "$(tput setaf 3)  MMMMMMMMMM    MM  MM    MMMMMMMMMM      $(tput setaf 2)OS: $MODNAME $(tput setaf 7)$(uname -s -m)"  >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)    MM          MM  MM          MM        $(tput setaf 2)Kernel: $(tput setaf 7)$(uname -r)" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)      MM                      MM          $(tput setaf 2)Terminal Build: $(tput setaf 7) v0.1 (alpha)" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)        MM                  MM            $(tput setaf 2)Shell: $(tput setaf 7)SHELL" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)          MM              MM              $(tput setaf 2)ModPath: $MODPATH" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)        MM      MMMMMM      MM            $(tput setaf 2)Installed Packages: $(tput setaf 7)$(ls /bin/ -1 | wc -l)" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)      MM    MMMM      MMMM    MM          " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)    MM  MMMM              MMMM  MM        " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)  MMMMMM                      MMMMMM      " >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 2)  " >> /var/tmp/Hakchi_retroarch_debug.log
echo "======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log
echo "    __  _____    __ __________  ______   ________________  __  ________   _____    __ " >> /var/tmp/Hakchi_retroarch_debug.log
echo "   / / / /   |  / //_/ ____/ / / /  _/  /_  __/ ____/ __ \/  |/  /  _/ | / /   |  / / " >> /var/tmp/Hakchi_retroarch_debug.log
echo "  / /_/ / /| | / ,< / /   / /_/ // /     / / / __/ / /_/ / /|_/ // //  |/ / /| | / /  " >> /var/tmp/Hakchi_retroarch_debug.log
echo " / __  / ___ |/ /| / /___/ __  // /     / / / /___/ _, _/ /  / // // /|  / ___ |/ /___" >> /var/tmp/Hakchi_retroarch_debug.log
echo "/_/ /_/_/  |_/_/ |_\____/_/ /_/___/    /_/ /_____/_/ |_/_/  /_/___/_/ |_/_/  |_/_____/" >> /var/tmp/Hakchi_retroarch_debug.log
echo " " >> /var/tmp/Hakchi_retroarch_debug.log
echo "======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 7)                          http://github.com/swingflip" >> /var/tmp/Hakchi_retroarch_debug.log
echo "                             $(date '+%d %b %Y  @ %H:%M') \#No internal clock. What a shit show!" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log	   
echo "$(tput setaf 7)Disk mounting information:" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(df)" >> /var/tmp/Hakchi_retroarch_debug.log
#top has a big overhead for some reason on the mini. Doesn't give much useful information anyway...
#echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log	
#echo "$(tput setaf 7)CPU analysis information:" >> /var/tmp/Hakchi_retroarch_debug.log
#echo "$(tput setaf 7)$(top | head -n 10)" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 7)RAM analysis information:" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 7)$(free)" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 3)Welcome to Hakchi Terminal!" >> /var/tmp/Hakchi_retroarch_debug.log
echo "$(tput setaf 7)" >> /var/tmp/Hakchi_retroarch_debug.log

#Ok Debug profiling done... Lets fire up a test rig.

#If frig == frig run retroarch to test our bash is working as normal
if [ "frig" == "frig" ]
then
	echo "$(chmod -R 777 /etc/libretro)" >> /var/tmp/Hakchi_retroarch_debug.log #Set full permissions for retroarch
	echo "Dumping retroarch config to log folder..." >> /var/tmp/Hakchi_retroarch_debug.log
	echo "$(cp -r /etc/libretro/.config /var/tmp/RetroArchConfig)" >> /var/tmp/Hakchi_retroarch_debug.log
	echo "$(cp -r /etc/libretro/retroarch-core-options.cfg /var/tmp/RetroArchConfig)" >> /var/tmp/Hakchi_retroarch_debug.log
	echo "$(cp -r /etc/libretro/retroarch.cfg /var/tmp/RetroArchConfig)" >> /var/tmp/Hakchi_retroarch_debug.log
	if /bin/retroarch-mini null &> /var/tmp/Hakchi_retroarch_debug.log ; then
		echo "RetroArch successfully ran using the test rig at $(date)" >> /var/tmp/Hakchi_retroarch_debug.log
	else
		echo "RetroArch FAILED to run using the test rig at $(date)" >> /var/tmp/Hakchi_retroarch_debug.log
	fi
fi