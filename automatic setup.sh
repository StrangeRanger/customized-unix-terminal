#!/bin/bash
read -p "Press 'enter' to begin"
if [ ! -e automatic\ setup.sh ]; then
	echo "Please execute the automatic setup in the directory it is located in; your active directory must be 'mac-terminal-style-config'."
	exit
fi

if [ -e ~/.bash_profile ]; then
	read -p "It seems as though you already have bash_profile in your home directory. Press 'enter' to continue."
else
	read -p "Press 'enter' to move bash_profile to your home directory"
	echo "Moving bash_profile to home directory"
	cd terminal\ syntax\ highlighting\ and\ aliases/
	cp bash_profile ~/.bash_profile
	echo "Successfully moved bash_profile"
fi

echo " "
if [ -d /Library/Developer/CommandLineTools/ ]; then
	read -p "It seems as though you already have the command-line tools installed. Press 'enter' to continue."
else
	echo "In order to override the current vim, you will need to do a few things"
	read -p "Press 'enter' to install command-line tools"
	xcode-select --install
	while true; do
		read -p "Please wait to continue until the command-line tools are completely installed"
		read -n 1 -p "Are the command-line tools installed? [y,n] " doit
		case $doit in 
			### add something that checks if even if they press yes, if the file for the comand-line tools are there...
			y|Y) echo  && break ;;
			n|N) echo ;;
		esac
	done
fi

echo " "
if [ -d /usr/local/Homebrew/ ]; then
	read -p "It seems as though you already have Homebrew installed. Press 'enter' to continue."
else
	read -p "Press 'enter' to install Homebrew"
	echo "Installing Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	echo "Successfully installed Homebrew"
fi

### figure out way to tell if vim override is already installed...
echo " "
read -p "Press 'enter' to install/override current vim"
echo "Installing/overriding current vim"
brew install vim --override-system-vim
echo "Successfully overwrote vim"

echo " "
read -p "We will now import and open the new terminal profile. When it opens, please return to this current terminal window. Press 'enter' to continue."
echo "Importing terminal profile"
if [ -d terminal\ profile/ ]; then
	cd terminal\ profile
else
	cd ../terminal\ profile
fi
open Pro\ \(\Modified\)\.terminal
echo "Successfully imported terminal profile"
echo "Finished!"

echo " "
read -p "There is one last step that must be done manually. Though the new terminal profile has been import, it is not the default profile. If you want to make it your default, follow these instructions:
1. Open terminal 'Preferences...'
2. Click the 'Profiles' tab
3. Click on 'Pro (Modified)'
4. Click 'Default' located at the bottom of the window"
