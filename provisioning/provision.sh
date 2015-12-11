#!/bin/bash

DEBIAN_FRONTEND=noninteractive

sudo timedatectl set-timezone Europe/Berlin

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" > /etc/apt/sources.list.d/docker.list

sudo apt-get update -y

sudo apt-cache policy docker-engine

sudo apt-get install -y \
     htop \
     tcpflow \
     tcpdump \
     sysstat \
     gdb \
     git \
     mercurial \
     tmux \
     vim \
     vim-nox \
     exuberant-ctags \
     build-essential \
     golang-go \
     gccgo \
     linux-image-extra-$(uname -r) \
     docker-engine=1.9.1-0~wily

sudo usermod -aG docker vagrant
sudo locale-gen UTF-8

sudo curl https://bootstrap.giantswarm.io/releaseit/latest/releaseit > /usr/local/bin/releaseit
sudo chmod 755 /usr/local/bin/releaseit

sudo mkdir -p /home/vagrant/bin

sudo mkdir -p /opt/dev-machine/projects/golang/{src,bin,pkg}

sudo echo "export PROJECT_PATH=/opt/dev-machine/projects" >> /etc/profile
sudo echo "export GOPATH=/opt/dev-machine/projects/golang" >> /etc/profile
