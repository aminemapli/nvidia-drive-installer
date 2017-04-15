#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Amine Rhattous
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================
echo "this script for [Legacy GeForce 8/9/200=[NV5x, NV8x, NV9x and NVAx] drivers"
echo " Rpm setup"

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm 

echo " Nvidia setup"

sudo dnf install -y xorg-x11-drv-nvidia-340xx akmod-nvidia-340xx "kernel-devel-uname-r == $(uname -r)" 
sudo dnf update -y

echo "################################################################"
echo "###################    Nvidia installed   ######################"
echo "################################################################"

