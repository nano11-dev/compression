@echo off
echo Thanks for Choosing a NanoWin build!
echo Do you wanna compress the OS? (y=yes, n=no)
set /P comp="Enter your choice: "
if /I "%comp%"=="y" goto yes
if /I "%comp%"=="n" goto no
echo Invalid choice. Exiting.
exit
:yes
compact /c c:\windows\*.* /s /i /exe:lzx
exit
:no
echo You chose not to compress the OS.
echo Enjoy your OS :)
exit
