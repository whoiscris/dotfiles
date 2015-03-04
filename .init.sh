#!/bin/bash

# exit on any errors
set -e

# set directory to current directory of script
SCRIPT_PATH=${0%/*}
if [[ "$0" != "$SCRIPT_PATH" ]] && [[ "" != "$SCRIPT_PATH" ]]
then
    cd $SCRIPT_PATH
fi

sudo /bin/bash .apt-get.sh

# get git submodules for this repository too.
echo "getting git submodules ..."
git submodule init
git submodule update

# make symlinks to /etc/.vimrc and /etc/vim
echo "creating symlinks to vim and .vimrc ..."
/bin/bash .makes-symlinks.sh


