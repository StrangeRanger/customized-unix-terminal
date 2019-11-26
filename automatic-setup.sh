#!/bin/bash

# 'All_installed' is used to determine whether or not all everything is installed/
# setup
all_installed="true"
yellow=$'\033[1;33m'
green=$'\033[0;32m'
cyan=$'\033[0;36m'
red=$'\033[1;31m'
nc=$'\033[0m'



# --------- #
# FUNCTIONS #
# --------- #
# TODO: Work on this function, which will be used to used to move .zshrc or
# .bash_profile to the home directory. Two parts of this code will call this function.
add_shell() {
    echo "add shell"
}



# ----------- #
# PREPERATION #
# ----------- #
# Changes the active directory to that of where the executed script is located
cd "$(dirname $0)"

# Sets up file and variables used to tell if particular options have already
# been setup, such as .zshrc and the terminal profile
if [[ ! -f .setup-status.txt ]]; then
    echo "_ZSH_ALIASES=false
_VIM_RESOURCE=false
_TERM_PROFILE=false" > .setup-status.txt
fi

# Makes the variables in '.setup-status.txt' available to this script
. .setup-status.txt
zsh_aliases=$_ZSH_ALIASES
vim_resource=$_VIM_RESOURCE
term_profile=$_TERM_PROFILE

# Since it takes a little to check if something is installed with brew, checking once
# and storing the results in variables makes it easier and takes less time...
if hash brew &>/dev/null; then
    echo -ne "Checking if 'zsh' and 'vim' have been installed..."
    
    if [[ $(brew list zsh &>/dev/null; echo $?) = 0 ]]; then
        brew_zshell="true"
    else
        brew_zshell="false"
    fi
    
    if [[ $(brew list vim &>/dev/null; echo $?) = 0 ]]; then
        brew_vim="true"
    else
        brew_vim="false"
    fi

else
    brew_zshell="false"
    brew_vim="false"
fi



# ---- #
# MAIN #
# ---- #
echo -e "\rWelcome to the 'Mac Terminal Style & Config Setup'\r\n"

while true; do
    # TODO: Find a better way of detecting if the command line tools are installed
    # Detects if Command Line Tools are installed
    if [[ -d $(xcode-select -p) ]]; then
        echo "1. Install Command Line Tools (must be installed before you can install" \
            "Homebrew) ${green}(Already installed)${nc}"
    else
        echo "1. Install Command Line Tools (must be installed before you can install" \
            "Homebrew) ${red}(Not Installed)${nc}"
    fi
    
    # Checks if Homebrew, zsh, and vim are installed
    if ! hash brew &>/dev/null; then
        echo "2. Install Homebrew (must be installed before installing zsh" \
            "or vim) ${red}(Not installed)${nc}"
        echo "3. Install zsh via Homebrew ${red}(Not installed)${nc}"
        echo "4. Install vim via Homebrew ${red}(Not installed)${nc}"
    else
        echo "2. Install Homebrew (must be installed before installing zsh" \
            "or vim) ${green}(Already installed)${nc}"
        if [[ $brew_vim = "true" ]]; then
            echo "3. Install vim via Homebrew ${green}(Already installed)${nc}"
        else
            echo "3. Install vim via Homebrew ${red}(Not installed)${nc}"
        fi

        if [[ $brew_zshell = "true" ]]; then
            echo "4. Install zsh via Homebrew ${green}(Already installed)${nc}"
        else
            echo "4. Install zsh via Homebrew ${red}(Not installed)${nc}"
        fi
    fi
    
    # Checks if oh my zsh was installed
    if [[ -d ~/.oh-my-zsh/ ]]; then
        echo "5. Install oh my zsh (recommended to install zsh via Homebrew" \
            "first) ${green}(Already installed)${nc}"
    else
        echo "5. Install oh my zsh (recommended to install zsh via Homebrew" \
            "first) ${red}(Not installed)${nc}"
    fi

    # Uses data saved in '.setup-status.txt' to tell if my custom aliases were
    # added to '.zshrc' 
    if [[ $zsh_aliases = "true" ]]; then
        echo "6. Add custom alias to '.zshrc' ${green}(Already added)${nc}"
    else
        echo "6. Add custom alias to '.zshrc' ${red}(Not added)${nc}"
    fi
    
    # Uses data saved in '.setup-status.txt' to tell if my custom vimrc was
    # added to the home directory
    if [[ $vim_resource = "true" ]]; then
        echo "7. Add custom vim resource ${green}(Already added)${nc}"
    else
        echo "7. Add custom vim resource ${red}(Not added)${nc}"
    fi
    
    # Uses data saved in '.setup-status.txt' to tell if the terminal profile
    # has been added
    if [[ $term_profile = "true" ]]; then
        echo "8. Add the Terminal Profile ${green}(Already added)${nc}"
    else
        echo "8. Add the Terminal Profile ${red}(Not added)${nc}"
    fi

    echo "9. Stop and exit script"
    read option
    case $option in
        1)
            clear
            if [[ -d $(xcode-select -p) ]]; then    
                echo "${cyan}The command-line tools are already installed${nc}"
                printf "We will now install updates for the command-line tools. "
                read -p "Press [Enter] to begin."
                echo "Checking for and installing command-line tool updates..."
                softwareupdate --install -a || {
                    echo "${red}Failed to check for and/or install updates" >&2
                    read -p "Press [Enter] to return to the automatic setup menu"
                    exit 1
                }
                echo "${green}The command-line tools have finished updating${nc}"
            else
                printf "We will now install the command-line tools. "
                read -p "Press [Enter] to begin."
                echo -e "\nInstalling command-line tools..."
                xcode-select --install || {
                    echo "${red}Failed to install the command-line tools${nc}" >&2
                    read -p "Press [Enter] to return to the automatic setup menu"
                    exit 1
                }
                printf "A window will open, prompting you to install the command-line tools. "
                read -p "Press [Enter] to continue, when it has fully installed."
                if [[ -d $(xcode-select -p) ]]; then
                    echo "${green}The command-line tools have been installed${nc}"
                else
                    echo "${red}Either the command-line tools have not fully installed" \
                        "or the script failed to install them${nc}"
                fi
            fi
            read -p "Press [Enter] to return to the automatic setup menu"
            clear
            ;;
        2)
            clear
            echo "2"
            clear
            ;;
        3)
            clear
            echo "3"
            clear
            ;;
        4)
            clear
            echo "4"
            clear
            ;;
        5)
            clear
            echo "5"
            clear
            ;;
        6)
            clear
            echo "6"
            clear
            ;;
        7)
            clear
            echo "7"
            clear
            ;;
        8)
            clear
            echo "8"
            clear
            ;;
        9)
            echo -e "\nExiting..."
            exit 0
            ;;
        *)
            clear
            echo "${red}Invalid input: '$option' is not a valid option${nc}" >&2
            continue
            ;;
    esac
done
