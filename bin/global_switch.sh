#!/bin/sh -e
#Assuming we are currently inside the root of a sandbox
if [ ! -f GTAGS ] ; then
    echo "Needs to be called inside the root of a sandbox"
    return 1
fi
SANDBOX=$PWD
grep GTAGSCSCOPE_DB ~/.bashrc > /dev/null
if [ $? -eq 0 ] ; then
    sed -i.bu "s|export GTAGSCSCOPE_DB=.*|export GTAGSCSCOPE_DB=$SANDBOX/GTAGS|g" ~/.bashrc
    sed -i.bu "s|export GTAGSROOT=.*|export GTAGSROOT=$SANDBOX|g" ~/.bashrc
else
    echo export GTAGSCSCOPE_DB=$SANDBOX/GTAGS >> ~/.bashrc
    echo export GTAGSROOT=$SANDBOX >> ~/.bashrc
fi
export GTAGSCSCOPE_DB=$SANDBOX/GTAGS
export GTAGSROOT=$SANDBOX
