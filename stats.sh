#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}')

memfree=$( free -mh | grep Mem: | awk '{print $7}')

connections=$( netstat | grep tcp )

users=$( who )

echo -en "This is a snapshot of your current system:

  \e[36m      Disk Used: $diskused
  \e[95m     Free Memory: $memfree
  \e[31m     Logged in Users: $user
       
       
\e[46m open internet connections: $connection"
 
 echo "
 colar info:
 http://misk.flogisoft.com/bash/tip_colors_and_formatting
 http://wiki.bash-hackers.org/scripting/style
 https:
//help.ubuntu.com/community/UnityLauncherAndDesktopfiles"
