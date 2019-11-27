#!/usr/bin/env bash
# gszulc(at)gmx.com
#
# tested on ubuntu 18.04 LTS
# install and configure OS for ansible + docker solution
#
## install required packages 
apt update
apt install apt-transport-https ca-certificates curl software-properties-common -y
apt-add-repository ppa:ansible/ansible
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-update
apt install ansible docker-ce python-pip -y
pip install docker

## verification
docker version
ansible --version

## setup localhost in hosts file for ansible
echo -e "[local]\nlocalhost ansible_connection=local" >> /etc/ansible/hosts


