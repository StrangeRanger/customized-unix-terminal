#!/bin/bash

# FUNCTIONS 
xcode_error() {
	if [ "$?" != "0" ]; then
		echo "This error can be circumvented by changing the active developer directory from '/Applications/Xcode.app/Contents/Developer/' to '/Library/Developer/CommandLineTools/'. Otherwise, you can either open Xcode.app, accept the License Agreement, then re-run the script, or accept the License Agreement via the terminal. In order to make it easier, I have provided the options/menu below."
		while true; do
			echo -e "$(tput smso)a$(tput sgr0)) Change the active developer directory\n$(tput smso)b$(tput sgr0)) Accept Xcode.app License Agreement via terminal\n$(tput smso)c$(tput sgr0)) Open Xcode.app, read License Agreement, accept or deny\n$(tput smso)d$(tput sgr0)) Stop, exit, and do later"
			read -p "Input the highlighted letter that corresponds the option you want. " doit
			doit=$( echo "$doit" | tr '[:upper:]' '[:lower:]')
			case $doit in
				"a") echo "Changing active developer directory" && sudo xcode-select --switch /Library/Developer/CommandLineTools && echo "Current active developer directory: " && xcode-select -p && break ;;	
				"b") echo "Accepting Xcode.app License Agreement" && sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer && sudo xcodebuild -license accept && break ;;
				"c") echo "Opening Xcode.app" && open /Applications/Xcode.app && echo "Stopping script" && exit 1 ;;
				"d") echo "Stopping script" && exit 1 ;;
				*) echo -e "$(tput bold)$(tput setaf 1)Invalid response$(tput sgr0)\nPlease input one of the highlighted letters" ;;
			esac
		done
		brew update && brew upgrade
		xcode_error
	fi
}

ownership_error() {
	echo "Needs editing"
	exit 1
}

error_trap() {
	read -p "For the script to work porperly, this error must be fixed. If you would like to resolve it, please press 'enter'. If not, then press 'Control' + 'C' on your keyboard to stop/cancel the script."
	while true; do
		read -p "If the error says that you do not have ownership of the files with which homebrew is located or that it is locked, input 'brew' and press 'enter'. If it mentions Xcode in any way, input 'xcode' and press 'enter'. If it says anything else, such as something incorrect in the script, input 'other' then press 'enter'. " doit
		doit=$( echo "$doit" | tr '[:upper:]' '[:lower:]')
		case $doit in 
			"brew") ownership_error && break ;;
			"xcode") xcode_error && break ;;
			"other") echo "Please mention/report this error to the creator of this script on github" && echo "Exiting/Stoping" && exit 1 ;;
			*) echo -e "$(tput bold)$(tput setaf 1)Invalid response$(tput sgr0)\n" ;;
		esac
	done
}


# CODE ### (work on stuff below before working on error stuff)
read -p "Press 'enter' to begin"
# checks if script is in current directory
if [ ! -e automatic\ setup.sh ]; then
	echo "Please execute the automatic setup in the directory it is located in; your active directory must be 'mac-terminal-style-config'."
	exit 1
fi

# checks for, then adds .bash_profile to home dir, if not alread there
if [ -e ~/.bash_profile ]; then
	read -p "It seems as though you already have bash_profile in your home directory. Press 'enter' to continue.
	"
else
	read -p "Press 'enter' to move bash_profile to your home directory"
	echo "Moving bash_profile to home directory"
	cd terminal\ syntax\ highlighting\ and\ aliases/
	cp bash_profile ~/.bash_profile
	echo -e "Successfully moved bash_profile\n"
fi

# checks for, then installs xcode command-line tools, if not already installed
if [ -d /Library/Developer/CommandLineTools/ ]; then
	read -p "It seems as though you already have the command-line tools installed. Press 'enter' to continue.
	"
else
	echo "In order to override the current vim, you will need to do a few things"
	read -p "Press 'enter' to install command-line tools"
	xcode-select --install
	while true; do
		read -p "Please wait to continue until the command-line tools are completely installed"
		read -n 1 -p "Are the command-line tools installed? [y,n] " doit
		case $doit in 
			### add something that checks if even if they press yes, if the file for the comand-line tools are there...
			y|Y|yes|Yes) echo  && break ;;
			n|N|no|No) echo ;;
		esac
	done
	echo ""
fi

# checks for, then installs Hombrew, if not already installed
if [ -d /usr/local/Homebrew/ ]; then
	read -p "It seems as though you already have Homebrew installed. Press 'enter' to update Homebrew."
	echo "Updating Homebrew"
	brew update && brew upgrade
	error_trap
	echo "Successfully updated Homebrew"
	read -p "Press 'enter' to continue"; echo ""
	
else
	read -p "Press 'enter' to install Homebrew"
	echo "Installing Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	echo -e "Successfully installed Homebrew\n"
fi

### figure out way to tell if vim override is already installed...
# install vim override
read -p "Press 'enter' to install/override current vim"
echo "Installing/overriding current vim"
brew install vim --override-system-vim
error_trap
echo -e "Successfully overwrote vim\n"

# importing terminal profile
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
