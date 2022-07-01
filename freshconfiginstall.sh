#!/bin/bash

#
# Assumes a fresh arch install and that the .sh is ran from the 
# cloned github repo at https://github.com/Cottonpapero/dotfiles.git
#

echo  
echo -e "\e[31;1mInstalling Packages from the Official Arch repo\e[0m"
echo  

# List of packages
PKGS=(
	'xorg-server'
	'xorg-apps'
	'xorg-xinit'
	'picom'

	#'nvidia'		# -|______ Nvidia Video Drivers metapackage
	#'nvidia-settings'	# -|	   (Done after xorg install for xorg.conf)

	'base-devel'
	'nitrogen'
	'pulseaudio'
	'pa-applet'
	'neofetch'
	'firefox'
	'vlc'
	'git'
	'awesome'
	'alacritty'
	'cpupower'	
)

for PKG in "${PKGS[@]}"; do
	echo -e "\e[32;1mCURRENTLY INSTALLING... ${PKG} \e[0m"
	sudo pacman -S "$PKG" --noconfirm --needed --quiet
done

echo  
echo -e "\e[32;1mMoving around configs...\e[0m"
echo  

# Moving configs from clone to respective dirs

USERPATH=$HOME

if [ ! -d $USERPATH/.config ]
then
	echo "Creating .config folder"
	mkdir -p $USERPATH/.config
else
	echo ".config already exists. proceeding..."
fi

mv .config/alacritty $USERPATH/.config
mv .config/awesome $USERPATH/.config

# Appending awesomewm to startx (optional prompt)

if [ ! -d $USERPATH/.xinitrc]
then
	sudo cp /etc/X11/xinit/xinitrc $USERPATH/.xinitrc
fi

while true; do
	read -p $'\n'"Add awesome to .xinitrc? [y/N]"$'\n' yN
	case $yN in
		[y]* ) 
			echo  >> $USERPATH/.xinitrc
			echo \# AwesomeWM >> $USERPATH/.xinitrc	# Could be done cleaner but
			echo exec awesome >> $USERPATH/.xinitrc	# I'm too lazy >:)
		break;;
		[N]* ) echo -e "\nexiting...";
		exit;;
		*    ) echo -e "\nInvalid. Please respond with y/N!";;
	esac
done

echo  
echo -e "\e[31;1mRestart recommended!\e[0m"
echo  
