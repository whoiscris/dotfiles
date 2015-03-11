#!/bin/bash

# exit on any errors
set -e

# set directory to current directory of script
SCRIPT_PATH=${0%/*}
if [[ "$0" != "$SCRIPT_PATH" ]] && [[ "" != "$SCRIPT_PATH" ]]
then
    cd $SCRIPT_PATH
fi

cd ~
# Solarized Color Theme for GNU ls (as setup by GNU dircolors)
if cd dircolors-solarized/; then git pull; else git clone https://github.com/seebi/dircolors-solarized.git; fi
cd ~
# Solarized colour scheme for the Xfce4 Terminal
if cd xfce4-terminal-colors-solarized; then git pull; else git clone https://github.com/sgerrand/xfce4-terminal-colors-solarized ; fi
cd ~
