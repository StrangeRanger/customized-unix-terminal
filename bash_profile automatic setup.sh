#!/bin/bash
read -p "bash_profile will be moved to your home directory\nPlease press enter to continue"
echo "Moving bash_profile to home directory"
cd ~/programs/mac-terminal-style-config/terminal\ syntax\ highlighting\ and\ aliases/
cp bash_profile ~/.bash_profile
echo "Successfully moved bash_profile"
echo "\n**To make the changes active in your current session execute 'source ~/.bash_profile' or close your current terminal session and open another**"

read -p "We will now be installing better vim......"
xcode-select --install
while true; do
        read -p "Please wait to continue (press enter) until the command-line tools are installed"
        read -n 1 -p "Are command-line tools installed? [y,n] " doit
        case $doit in 
                y|Y) echo  && break ;;
                n|N) echo ;;
        esac
done

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Homebrew has now been installed"
echo "Now overriding current vim"
brew install vim --override-system-vim
echo "Better vim has been installed"
echo "we finished"
