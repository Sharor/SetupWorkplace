#!/bin/bash
sudo apt-get update
sudo apt-get -y -q install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge -y lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get -y -q upgrade
sudo apt-get -y -q install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get update
sudo apt-get -y install docker-engine
sudo service docker start
sudo usermod -a -G docker ${USER} # remove dependency on sudo access to docker

sudo apt-get -y autoremove
sudo apt-get -y autoclean
