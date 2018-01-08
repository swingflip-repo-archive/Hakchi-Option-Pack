#!/bin/sh

#By the way, we do all this shit below just to give clover enough time to gracefully close before killing processes. If you run the scripts too fast they will c8.

#Create Data directories if it's not already created and mounted...
mkdir -m 777 /media/data/
mkdir -m 777 /media/data/log

#Clear down the log file
rm /media/data/log/Hakchi_terminal.log

echo "$(tput setaf 2)  " > /media/data/log/Hakchi_terminal.log
echo "======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo " " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)                  MM                      " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)                MM  MM                    " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)              MM      MM                  $(tput setaf 2)User: $(tput setaf 7)$USER" >> /media/data/log/Hakchi_terminal.log
if [ -z "$HOSTNAME" ]
then
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7) Not Applicable" >> /media/data/log/Hakchi_terminal.log
else
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7)$HOSTNAME" >> /media/data/log/Hakchi_terminal.log
fi
echo "$(tput setaf 3)  MMMMMMMMMM    MM  MM    MMMMMMMMMM      $(tput setaf 2)OS: $MODNAME $(tput setaf 7)$(uname -s -m)"  >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)    MM          MM  MM          MM        $(tput setaf 2)Kernel: $(tput setaf 7)$(uname -r)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)      MM                      MM          $(tput setaf 2)Terminal Build: $(tput setaf 7) v0.1 (alpha)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)        MM                  MM            $(tput setaf 2)Shell: $(tput setaf 7)SHELL" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)          MM              MM              $(tput setaf 2)ModPath: $MODPATH" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)        MM      MMMMMM      MM            $(tput setaf 2)Installed Packages: $(tput setaf 7)$(ls /bin/ -1 | wc -l)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)      MM    MMMM      MMMM    MM          " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)    MM  MMMM              MMMM  MM        " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)  MMMMMM                      MMMMMM      " >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)  " >> /media/data/log/Hakchi_terminal.log
echo "======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "    __  _____    __ __________  ______   ________________  __  ________   _____    __ " >> /media/data/log/Hakchi_terminal.log
echo "   / / / /   |  / //_/ ____/ / / /  _/  /_  __/ ____/ __ \/  |/  /  _/ | / /   |  / / " >> /media/data/log/Hakchi_terminal.log
echo "  / /_/ / /| | / ,< / /   / /_/ // /     / / / __/ / /_/ / /|_/ // //  |/ / /| | / /  " >> /media/data/log/Hakchi_terminal.log
echo " / __  / ___ |/ /| / /___/ __  // /     / / / /___/ _, _/ /  / // // /|  / ___ |/ /___" >> /media/data/log/Hakchi_terminal.log
echo "/_/ /_/_/  |_/_/ |_\____/_/ /_/___/    /_/ /_____/_/ |_/_/  /_/___/_/ |_/_/  |_/_____/" >> /media/data/log/Hakchi_terminal.log
echo " " >> /media/data/log/Hakchi_terminal.log
echo "======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)                          http://github.com/swingflip" >> /media/data/log/Hakchi_terminal.log
echo "                             $(date '+%d %b %Y  @ %H:%M') \#No internal clock. What a shit show!" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	   
echo "$(tput setaf 7)Disk mounting information:" >> /media/data/log/Hakchi_terminal.log
echo "$(df)" >> /media/data/log/Hakchi_terminal.log
#top has a big overhead for some reason on the mini. Doesn't give much useful information anyway...
#echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	
#echo "$(tput setaf 7)CPU analysis information:" >> /media/data/log/Hakchi_terminal.log
#echo "$(tput setaf 7)$(top | head -n 10)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)RAM analysis information:" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)$(free)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)Welcome to Hakchi Terminal!" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)" >> /media/data/log/Hakchi_terminal.log

#Ok Debug profiling done... Lets fire up a test rig.

#If frig == frig run retroarch to test our bash is working as normal
#if [ "frig" == "frig" ]
#then
#	if /bin/retroarch-mini null &> /media/data/log/RetroArch_test_runtime.log ; then
#		echo "RetroArch successfully ran using the test rig at $(date)" >> /media/data/log/Hakchi_terminal.log
#	else
#		echo "RetroArch FAILED to run using the test rig at $(date)" >> /media/data/log/Hakchi_terminal.log
#	fi
#fi
gameover &> /media/data/log/Hakchi_terminal.log
#/media/fbpad/fbpad &> /media/data/log/FBpad_runtime.log

#If install == install run YAFT and do a benchmark analysis
#if [ "install" == "no" ]
#then
#	echo "RUNNING INSTALL OF YAFT" >> /media/data/log/Hakchi_terminal.log
#	echo "$(/bin/mkdir -p /usr/share/terminfo)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/tic -o /usr/share/terminfo /media/yaft-0.2.9/info/yaft.src)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/mkdir -p /usr/bin/)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/install -m755 /media/yaft-0.2.9/yaft /usr/bin/yaft)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/install -m755 /media/yaft-0.2.9/yaft_wall /usr/bin/yaft_wall)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/mkdir -p /usr/share/man/man1/)" &> /media/data/log/Yaft_runtime.log
#	echo "$(/bin/install -m644 /media/yaft-0.2.9/man/yaft.1 /usr/share/man/man1/yaft.1)" &> /media/data/log/Yaft_runtime.log
#	echo "FINISHED INSTALL OF YAFT" >> /media/data/log/Hakchi_terminal.log
#	#echo "$(/media/yaft-0.2.9/yaft)" &> /media/data/log/Yaft_runtime.log
#	if /media/yaft-0.2.9/yaft &> /media/data/log/Yaft_runtime.log ; then
#		echo "YAFT successfully ran YAFT at $(date)" >> /media/data/log/Hakchi_terminal.log
#	else
#		echo "YAFT FAILED to run YAFT at $(date)" >> /media/data/log/Hakchi_terminal.log
#	fi
#fi