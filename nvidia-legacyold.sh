#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Amine Rhattous
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================
echo "this script for Legacy GeForce 6/7=[NV4x and NV6x] drivers"
echo " Rpm setup"

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm 

echo " Nvidia setup"

sudo dnf install -y xorg-x11-drv-nvidia-304xx akmod-nvidia-304xx "kernel-devel-uname-r == $(uname -r)" 
sudo dnf update -y

echo "################################################################"
echo "###################    Nvidia installed   ######################"
echo "################################################################"

