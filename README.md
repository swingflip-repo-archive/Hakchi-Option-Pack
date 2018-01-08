![Hakchi Nintendo Test Program](https://i.imgur.com/3pshpj2.png)
# Hakchi Option Pack - Now you are playing with POWER!
A collection of custom options, debuggers and tool applicatons which give you greater flexibility when using your Nintendo Mini!
#### Now supports NAND as well as USB-HOST!!!

## Features

 - Remote Shut Down (Shut down your mini from the comfort of your couch!)
 - Remote Console Reboot (As above but reboots your mini fully)
 - Resync Console (Resynchronise your console)
 - Run Nintendo's Internal Test program (Hidden away on the mini is Nintendo's own test program. You can now launch it from your dash!)
 - Dump File Structure (Dump the complete file listing for your mini along with file permissions, mount points. Also dumps your init.d and preinit.d files too!)
 - RertroArch Debugger (Run RetroArch in full debug mode! It dumps the standard output and errors to a log file as well as gives full file permissions to all the files within retroarch incase you have a permission problem)
 - Hakchi Benchmark (Run some test scripts against the mini, see the amount of disk space left, memory usage and what programs are installed in the kernel)
 - Hakchi Save To Nand (DanTheMan827's script to push saves to the nand. **EXPERIMENTAL** haven't tested!)
 - Hakchi Save To USB (As above but the other way. **EXPERIMENTAL** haven't tested!)
 - Toggle USB Write Permissions - Fix write permission issues like writting logs to your USB by toggling on write permissions to the USB. Saves settings even after power down)
 
 ### How does this awesome shit work?
 
 1. Drop the bundled options.png into your hakchi2 folder_images folder
 2. Highlight all the ZIPS for your type of hakchi build (USB-HOST or NAND) and drag it straight into hakchi2! (Just as you would with a game)
 3. Hit Sync!
 4. (If you like to be told how to suck eggs... then create a Options folder with the new options icon and drag the newly created apps into it!)
 5. Have a beer
 
 ### Things to note.
 
 If you are running NAND apps the dump logs and files are located in volitile memory "/var/tmp/" you need to telnet to retrieve them as this directory is wiped when powered down! 
 
 We are currently still trying to pinpoint the exact causes of C(x) errors (the nintendo ones) These errors are completely harmless and do not damage your system they are just a pain.
 
 9/10 you will not recieve errors but if you do these are the noted ones so far:
 
 - c1 when remote shutting down flashes up then goes away. (not a problem this is due to a timing thing with the mini. It's still graceful)
 - c7 if you recieve this when running the scripts please refer below
 - c8 you will usually encounter this when or after running the nintendo test app. Just push the power button back and forth once and it will shutdown.
 
 - c2 and c3 combo. This is very rare but if you get it. Open up a Canoe SNES game, hold select and down. Shut down. power up, open a Canoe SNES game and then you should be ok.
 
 ### If you are using USB-HOST and the scripts aren't working!!!
 This is because you don't have a save folder in the hakchi folder on your USB and you are writting save data to the NAND. Because of this your USB is mounted with read-only permissions.
 
 All you need to do is run the "Toggle USB write permissions" it will write to the config and reboot. Your apps will now work as you have granted write access to the USB mount.
 
 ### Planned developments
 - Save game backup (Backups all save game data and store it in a compressed format)
 - New gui for option select (this application will run external from clover and it's normal dash.)
 - Hakchi Terminal (This is a big project but it will basically give you basic terminal access to the kernel with output rendering and keyboard support.)
 
 ## Shout Outs
 - madmonkey1907 'madmonkey' - [Github Link](https://github.com/madmonkey1907)
 - Alexey 'Cluster' Avdyukhin - [Github Link](https://github.com/ClusterM)
 - DanTheMan827 - [Github Link](https://github.com/DanTheMan827)
 - CompCom - [Github Link](https://github.com/CompCom) (BIG shout out to this guy.)
 - Kyland K AKA KMFDManic - [Github Link](https://github.com/KMFDManic) - [Youtube link](https://www.youtube.com/channel/UCoRrbw6gyi4KRPGUNnVVjMQ)
 - And anyone for their continued support and banter in the discord channel. You know who you are!
 
 ## Final notes
If you need me you can find me in the Nintendo Classics discord. Remember alot of these tools were built for personal use and I just distributed them. If you don't like them then don't use them.


 
 
