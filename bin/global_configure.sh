#!/bin/sh
#Assuming we are currently inside the root of a sandbox
source ~/.bashrc
gtags -c
grep GTAGSCSCOPE_DB ~/.bashrc > /dev/null
if [ $? -eq 0 ] ; then
    sed -i.bu "s|export GTAGSCSCOPE_DB=.*|export GTAGSCSCOPE_DB=$PWD/GTAGS|g" ~/.bashrc
    sed -i.bu "s|export GTAGSROOT=.*|export GTAGSROOT=$PWD|g" ~/.bashrc
else
    echo export GTAGSCSCOPE_DB=$PWD/GTAGS >> ~/.bashrc
    echo export GTAGSROOT=$PWD >> ~/.bashrc
fi
source ~/.bashrc
