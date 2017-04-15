# nvidia-drive-installer for fedora 25-26

those scripts for install nvidia driver on <b>fedora 25 and 26</b> <br>

nVidia has several driver series, each of which has different hardware support. To determine which driver you need to install, you'll first need to find your graphics card model.

If you don't know it, open a Terminal (Applications > System Tools > Terminal) and type:

$  /sbin/lspci | grep -e VGA

#for { NVCx and newer=Current GeForce/Quadro/Tesla } chose the first  script
 
#for { Legacy GeForce 8/9/200=NV5x, NV8x, NV9x and NVAx } chose second script
 
#for { Legacy GeForce 6/7=NV4x and NV6x } chose the last script
