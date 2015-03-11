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

# git clones
/bin/bash .git-clones.sh

# get git submodules for this repository too.
echo "getting git submodules ..."
git submodule init
git submodule update


# create directories
mkdir --parents ~/.dir_colors
cd ~/.dir_colors
ln --symbolic --force ~/dircolors-solarized/dircolors.ansi-light .
cd -
grep --quiet '$TERM != "screen" ]] && exec tmux' ~/.bashrc || echo '[[ $TERM != "screen" ]] && exec tmux' >> ~/.bashrc
grep --quiet 'eval `dircolors ~/.dir_colors/dircolors.ansi-light`' ~/.bashrc || echo 'eval `dircolors ~/.dir_colors/dircolors.ansi-light`' >> ~/.bashrc

# cp 
cp .tmux.conf ~/.tmux.conf
# make symlinks to /etc/.vimrc and /etc/vim
/bin/bash .makes-symlinks.sh


