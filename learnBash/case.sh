#/usr/bin/env bash

echo "What is your favaourtie Linux Distribution"

echo "1- Arch"
echo "2- CentOS"
echo "3- DebianOS"
echo "4- Mint"
echo "5- Ubuntu"
echo "6- Something else"

read distro

case $distro in
	1) echo "Arch is rolling release";;
	2) echo "Centos is popuplar on servers";;
	3) echo "Debian is a community distribution";;
	5) echo "Ubuntu is popuplar on both servers and computer";;
	6) echo "There are many distritbution out there";;
	*) echo "You did not enter an approriate choice."
esac
