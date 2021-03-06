#!/bin/sh

#By the way, we do all this shit below just to give clover enough time to gracefully close before killing processes. If you run the scripts too fast they will c8.

#Create Data directories if it's not already created and mounted...
mkdir -m 777 /media/data/
mkdir -m 777 /media/data/log
mkdir -m 777 /var/tmp/input #just incase

#Clear down the log file
rm /var/tmp/Hakchi_terminal.log
rm /var/tmp/input.log
rm /var/tmp/keyboard.log

echo "$(tput setaf 2)  " > /var/tmp/Hakchi_terminal.log
echo "======================================================================================" >> /var/tmp/Hakchi_terminal.log
echo " " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)                  MM                      " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)                MM  MM                    " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)              MM      MM                  $(tput setaf 2)User: $(tput setaf 7)$USER" >> /var/tmp/Hakchi_terminal.log
if [ -z "$HOSTNAME" ]
then
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7) Not Applicable" >> /var/tmp/Hakchi_terminal.log
else
	echo "$(tput setaf 3)            MM          MM                $(tput setaf 2)Hostname: $(tput setaf 7)$HOSTNAME" >> /var/tmp/Hakchi_terminal.log
fi
echo "$(tput setaf 3)  MMMMMMMMMM    MM  MM    MMMMMMMMMM      $(tput setaf 2)OS: $MODNAME $(tput setaf 7)$(uname -s -m)"  >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)    MM          MM  MM          MM        $(tput setaf 2)Kernel: $(tput setaf 7)$(uname -r)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)      MM                      MM          $(tput setaf 2)Terminal Build: $(tput setaf 7) v0.1 (alpha)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)        MM                  MM            $(tput setaf 2)Shell: $(tput setaf 7)SHELL" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)          MM              MM              $(tput setaf 2)ModPath: $MODPATH" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)        MM      MMMMMM      MM            $(tput setaf 2)Installed Packages: $(tput setaf 7)$(ls /bin/ -1 | wc -l)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)      MM    MMMM      MMMM    MM          " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)    MM  MMMM              MMMM  MM        " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)  MMMMMM                      MMMMMM      " >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)  " >> /var/tmp/Hakchi_terminal.log
echo "======================================================================================" >> /var/tmp/Hakchi_terminal.log
echo "    __  _____    __ __________  ______   ________________  __  ________   _____    __ " >> /var/tmp/Hakchi_terminal.log
echo "   / / / /   |  / //_/ ____/ / / /  _/  /_  __/ ____/ __ \/  |/  /  _/ | / /   |  / / " >> /var/tmp/Hakchi_terminal.log
echo "  / /_/ / /| | / ,< / /   / /_/ // /     / / / __/ / /_/ / /|_/ // //  |/ / /| | / /  " >> /var/tmp/Hakchi_terminal.log
echo " / __  / ___ |/ /| / /___/ __  // /     / / / /___/ _, _/ /  / // // /|  / ___ |/ /___" >> /var/tmp/Hakchi_terminal.log
echo "/_/ /_/_/  |_/_/ |_\____/_/ /_/___/    /_/ /_____/_/ |_/_/  /_/___/_/ |_/_/  |_/_____/" >> /var/tmp/Hakchi_terminal.log
echo " " >> /var/tmp/Hakchi_terminal.log
echo "======================================================================================" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 7)                          http://github.com/swingflip" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	   
echo "$(tput setaf 7)Disk mounting information:" >> /var/tmp/Hakchi_terminal.log
echo "$(df)" >> /var/tmp/Hakchi_terminal.log
#top has a big overhead for some reason on the mini. Doesn't give much useful information anyway...
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	
echo "$(tput setaf 7)CPU analysis information:" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 7)$(top | head -n 10)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 7)RAM analysis information:" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 7)$(free)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 3)Welcome to Hakchi Terminal!" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 7)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	
echo "$(tput setaf 3)Manuals for useful binaries..." >> /var/tmp/Hakchi_terminal.log
man /media/yaft >> /var/tmp/Hakchi_terminal.log
#echo "$(man /media/fbpad/fbpad)" >> /var/tmp/Hakchi_terminal.log
#echo "$(man test-menu)" >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	
echo "$(tput setaf 3)Setting up variables and loading up drivers..." >> /var/tmp/Hakchi_terminal.log
m_clover_pid=$(pidof clover-mcp)
echo The PID for clover-mcp is: $m_clover_pid >> /var/tmp/Hakchi_terminal.log
cat /proc/bus/input/devices &> /var/tmp/input.log #dump the input list so we know what we are working with
#Load the kbd drivers just incase they aren't already 
echo "sunxi softkeys: starting driver" >> /var/tmp/Hakchi_terminal.log
modprobe sunxi-knob >> /var/tmp/Hakchi_terminal.log
modprobe sunxi-keyboard >> /var/tmp/Hakchi_terminal.log
echo "finished loading the sunxi softkeys driver..." >> /var/tmp/Hakchi_terminal.log
echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	

/media/strace -o /var/tmp/hakchi2.log /media/yaft &> /var/tmp/yaft_runtime.log

echo "$(tput setaf 2)======================================================================================" >> /var/tmp/Hakchi_terminal.log	

echo "Hakchi Terminal Finished" >> /var/tmp/Hakchi_terminal.log