#!/bin/bash
printf "\n please enter a file name "
read num3
printf "\n please enter the path to check "
read path2check

if find $pathcheck -name $num3 -print -quit | grep -q '^'; then
echo
echo
echo "the file exists!"
echo
echo
echo "below are the locations of said filenames copies..."
echo 
##             use 2> /dev/null to get rid of pesky stderr 
##  Permission denied...  UCK...
  find $path2check 2>/dev/null | grep "\/$num3$" | less
  


else
  echo "the file does not exist!"
fi



