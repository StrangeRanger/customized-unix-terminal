#!/bin/bash
read -p "Press 'enter' to move bash_profile to your home directory"
echo "Moving bash_profile to home directory"
cd ~/programs/mac-terminal-style-config/terminal\ syntax\ highlighting\ and\ aliases/
cp bash_profile ~/.bash_profile
echo "Successfully moved bash_profile"

echo " "
echo "In order to override the current vim, you will need to do a few things"
read -p "Press 'enter' to install command-line tools"
xcode-select --install
while true; do
        read -p "Please wait to continue until the command-line tools are completely installed"
        read -n 1 -p "Are the command-line tools installed? [y,n] " doit
        case $doit in 
                y|Y) echo  && break ;;
                n|N) echo ;;
        esac
done
read -p "Press 'enter' to install Homebrew"
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Successfully installed Homebrew"
read -p "Press 'enter' to install/override current vim"
echo "Installing/overriding current vim"
brew install vim --override-system-vim
echo "Successfully overwrote vim"
echo "Finished!"
