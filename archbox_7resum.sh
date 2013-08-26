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
echo "* V�rification des configurations en manuel"
echo "***************************************************************"
# V�rification bon sda
echo "V�rifier si le fichier syslinux.cfg comporte bien le sdaX de la racine"
echo "	Affichage des partitions : fdisk -l"
echo "	Configuration : more /boot/syslinux/syslinux.cfg"
echo "	Mise � jour si modification : syslinux-install_update -iam"
echo ""

# V�rification de l'ip fixe 
echo "V�rifier si le fichier network poss�de bien la bonne carte r�seau (eth ou autre)"
echo "	V�rifier �galement l'ip : ifconfig"
echo "	Configuration : more /etc/conf.d/network"
echo ""

# V�rification de la langue
echo "V�rifier si le fichier locale.gen poss�de bien la bonne langue et non autre"
echo "Si anglais, laisser car peut servire pour des programmes natifs en anglais"
echo "	more /etc/locale.gen"
echo "	r�g�n�rer le locale : locale-gen"
echo ""

# V�rification du partage r�seau
echo "Configuration SAMBA : nano /etc/samba/smb.conf"
echo ""

# V�rification de l'arret sur XBMC
echo "V�rifier les r�gles de fermetures de xbmc (syntaxe)"
echo "nano /etc/polkit-1/rules.d/10-xbmc.rules"

# RPI
echo "KEYMAP=fr-pc" >> /etc/vconsole.conf
echo "FONT=" >> /etc/vconsole.conf
echo "FONT_MAP=" >> /etc/vconsole.conf
echo "* /etc/vconsole.conf [OK]"
# RPI
# Config /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime