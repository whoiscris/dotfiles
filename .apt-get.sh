#!/bin/bash

set -e

# add repos for packages
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59

sudo apt-get update --quiet

sudo apt-get install -y \
    vim \
    wget \
    curl \
    git \
    sublime-text-installer \
    spotify-client-qt
