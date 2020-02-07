#!/bin/bash
apt-get update
apt-get install -y dkms openssh-server tmux htop curl apt-transport-https build-essential linux-headers-$(uname -r)
