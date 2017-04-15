#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Amine Rhattous
# License : Distributed under the terms of GNU GPL version 2 or later 
# 
#======================================================================================
echo "this script for [NVCx and newer=Current GeForce/Quadro/Tesla] drivers"
echo " Rpm setup"

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm 

echo " Nvidia setup"

sudo dnf install -y xorg-x11-drv-nvidia akmod-nvidia "kernel-devel-uname-r == $(uname -r)" 
sudo dnf update -y

echo "################################################################"
echo "###################    Nvidia installed   ######################"
echo "################################################################"
