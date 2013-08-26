#!/bin/sh
clear
echo "***************************************************************"
echo "*# 														   #*"
echo "*# [ ARCHBOX ]											   #*"
echo "*# Votre console multim�dia de salon 						   #*"
echo "*# 														   #*"
echo "***************************************************************"
echo ""
echo "***************************************************************"
echo "* Installation des drivers"
echo "* Votre carte graphique :"
lspci -k | grep -A 2 -i "VGA"
echo "***************************************************************"
echo ""

echo "***************************************************************"
echo "* Raspberry PI drivers vid�os"
echo "* pacman -Su --noconfirm xf86-video-fbdev"
echo "***************************************************************"
echo ""

echo "***************************************************************"
echo "* Nvidia drivers vid�os"
echo "* touch /etc/X11/xorg.conf.d/10-keyboard-layout.conf"
echo '*  Section \"InputClass\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo '*  	Identifier	\"Keyboard Layout\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo '*  	MatchIsKeyboard	\"yes\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo '*  	MatchDevicePath	\"/dev/input/event*\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo '*  	Option	\"XkbLayout\"	\"fr\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo '*  	Option	\"XkbVariant\"	\"latin9\"" >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf'
echo "*  EndSection >> /etc/X11/xorg.conf.d/10-keyboard-layout.conf"
echo "*  pacman -Su --noconfirm nvidia nvidia-utils lib32-nvidia-utils"
echo "*  Si conflit libgl avec paquets nvidia utils pacman -Rdd libgl"
echo "***************************************************************"
echo ""
echo "***************************************************************"
echo "* Nouveau drivers vid�os"
echo "*  pacman -Su --noconfirm xf86-video-nouveau nouveau-dri"
echo "*  Acceleration 3D : pacman -Su --noconfirm libva-vdpau-driver"
echo "*  Generation du Xorg.conf dans /root/xorg.conf.new : X -configure"
echo "*  TEST :  X -config /root/xorg.conf.new"
echo "*  mv /root/xorg.conf.new /etc/X11/xorg.conf"
echo "***************************************************************"
echo ""
echo "***************************************************************"
echo "* AMD drivers vid�os"
echo "*  pacman -Su --noconfirm xf86-video-ati"
echo "* AMD drivers Carte m�re"
echo "*  pacman -Su --noconfirm amd-ucode"
echo "***************************************************************"
echo ""
echo "***************************************************************"
echo "* INTEL drivers vid�os"
echo "*  pacman -Su --noconfirm xf86-video-intel"
echo "***************************************************************"
echo ""
echo "***************************************************************"
echo "* ALL drivers vid�os sans acceleration 3D"
echo "*  pacman -Su --noconfirm xf86-video-vesa"
echo "***************************************************************"
echo ""