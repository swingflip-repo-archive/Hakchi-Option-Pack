#!/bin/sh

#By the way, we do all this shit below just to give clover enough time to gracefully close before killing processes. If you run the scripts too fast they will c8.

#Create Data directories if it's not already created and mounted...
mkdir -m 777 /media/data/
mkdir -m 777 /media/data/log
mkdir -m 777 /media/data/log/input #just incase

#Clear down the log file
rm /media/data/log/Hakchi_terminal.log
rm /media/data/log/input.log
rm /media/data/log/keyboard.log

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
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	   
echo "$(tput setaf 7)Disk mounting information:" >> /media/data/log/Hakchi_terminal.log
echo "$(df)" >> /media/data/log/Hakchi_terminal.log
#top has a big overhead for some reason on the mini. Doesn't give much useful information anyway...
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	
echo "$(tput setaf 7)CPU analysis information:" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)$(top | head -n 10)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)RAM analysis information:" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)$(free)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 3)Welcome to Hakchi Terminal!" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 7)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	
echo "$(tput setaf 3)Manuals for useful binaries..." >> /media/data/log/Hakchi_terminal.log
man /media/yaft >> /media/data/log/Hakchi_terminal.log
#echo "$(man /media/fbpad/fbpad)" >> /media/data/log/Hakchi_terminal.log
#echo "$(man test-menu)" >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	
echo "$(tput setaf 3)Setting up variables and loading up drivers..." >> /media/data/log/Hakchi_terminal.log
m_clover_pid=$(pidof clover-mcp)
echo The PID for clover-mcp is: $m_clover_pid >> /media/data/log/Hakchi_terminal.log
cat /proc/bus/input/devices &> /media/data/log/input.log #dump the input list so we know what we are working with
#Load the kbd drivers just incase they aren't already 
echo "sunxi softkeys: starting driver" >> /media/data/log/Hakchi_terminal.log
modprobe sunxi-knob >> /media/data/log/Hakchi_terminal.log
modprobe sunxi-keyboard >> /media/data/log/Hakchi_terminal.log
echo "finished loading the sunxi softkeys driver..." >> /media/data/log/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	

/media/strace -o /media/data/log/hakchi2.log /media/yaft &> /media/data/log/yaft_runtime.log

echo "$(tput setaf 2)======================================================================================" >> /media/data/log/Hakchi_terminal.log	

echo "Hakchi Terminal Finished" >> /media/data/log/Hakchi_terminal.log