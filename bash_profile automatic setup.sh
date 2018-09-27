#!/bin/bash
echo Moving bash_profile to home directory
cd ~/programs/mac-terminal-style-config/terminal\ syntax\ highlighting\ and\ aliases/
cp bash_profile ~/.bash_profile
echo Successfully moved bash_profile

echo " "
echo "To make the changes active in your current session execute 'source ~/.bash_profile && source ~/.vimrc' or close your current terminal session and open another"
echo "If any errors such as '-bash: syntax: command not found', just ignore them"
