#!/bin/bash

################################################################################
#
# Automatic Setup
# ---------------
#
# Helps automactically set up better vim, terminal syntax highlighting, terminal
# profile, etc.
#
################################################################################
# 
# Global [ variables ]
#
################################################################################
#
    yellow=$'\033[1;33m'
    green=$'\033[0;32m'
    cyan=$'\033[0;36m'
    red=$'\033[1;31m'
    nc=$'\033[0m'
    clrln=$'\r\033[K'
    zshrc_content="# Custom aliases \
        \nalias edisk=\"cd /Volumes && ll\" \
        \nalias find2=\"sudo find / -iname $1\" \
        \nalias grep2=\"sudo grep -r -i -l $1 $2\" \
        \nalias ic=\"cd ~/Library/Mobile\ Documents/com~apple~CloudDocs\" \
        \nalias batterylife=\"pmset -g batt\" \
        \nalias batterycycles=\"system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'\" \
        \n# Probe open ports to determine service/version info; combines UDP scan and TCP \
        \n# SYN scan; Enable OS detection, version detection, script scanning, and \
        \n# traceroute; verbose * 3 \
        \nalias nmap-os-udp-tcp-vvv=\"sudo nmap -sV -sSU -A -vvv\" \
        \nalias trm=\"trash\" \
        \nalias wdmsg=\"ncdu\" # Alias stands for \"where did my storage go\""

#
#################################################################################
#
# Global [ functions ]
#
################################################################################
#
    # Creates '.vimrc'
    creating_vimrc() {
        echo "source \$VIMRUNTIME/defaults.vim 
set tabstop=4
set shiftwidth=4
set expandtab
set mouse-=a" > ~/.vimrc || {
            echo "${red}Failed to add custom vim resource file${nc}" >&2
            read -p "Press [Enter] to return to the automatic setup menu"
            clear
            return 1
        }
        sed -i .bak 's/^VimResource=.*/VimResource=true/g' .setup-status.txt
    }

    # Checks if Homebrew and the Command Line Tools are installed
    software_check() {
        if [[ $cmd_tools_installed = false || $brew_installed = false ]]; then
            if [[ $cmd_tools_installed = false ]]; then
                echo "${red}The command line tools are not installed${nc}"
            fi

            if [[ $brew_installed = false ]]; then
                echo "${red}Homebrew is not installed${nc}"
            fi

            echo -e "\n${yellow}Required software to install $1 via Homebrew" \
                "(is/are) not installed${nc}"
            read -p "Press [Enter] to return to the automatic setup menu"
            clear
            return 1
        fi
    }

#
################################################################################
#
# Global [ traps ]
#
################################################################################
#

    trap "echo -e \"\n\nScript forcefully stopped\nExiting...\" && exit" SIGINT \
        SIGTSTP SIGTERM

#
################################################################################
# 
# [ Pre-main ]
#
################################################################################
#
    # Changes the active directory to that of where the executed script is located
    cd "$(dirname $0)"

    # Sets up '.setup-status.txt' and the variables used to tell if particular
    # options have already been setup, such as '.zshrc' and the terminal profile
    if [[ ! -f .setup-status.txt ]]; then
        echo "ZshLSCOLORS=false
ZshAliases=false
VimResource=false
TermProfile=false" > .setup-status.txt
    fi

    # Since it takes a few seconds to check if something is installed via brew,
    # checking once and storing the results in variables reduces the amount and
    # number of times it has to check  
    if hash brew &>/dev/null; then
        printf "Checking if 'zsh' and 'vim' have been installed..."
        
        if [[ $(brew list zsh &>/dev/null; echo $?) = 0 ]]; then
            brew_zshell_installed=true
        else
            brew_zshell_installed=false
        fi
        
        if [[ $(brew list vim &>/dev/null; echo $?) = 0 ]]; then
            brew_vim_installed=true
        else
            brew_vim_installed=false
        fi

    else
        brew_zshell_installed=false
        brew_vim_installed=false
    fi

#
################################################################################
#
# [ Main ]
#
################################################################################
#
    # TODO: Continue editing from this point
    echo -e "${clrln}Welcome to the 'Mac Terminal Style & Config Setup'\n"

    while true; do
        . .setup-status.txt
        zsh_lscolors=$ZshLSCOLORS
        zsh_aliases=$ZshAliases
        vim_resource=$VimResource
        term_profile=$TermProfile

        # Detects if Command Line Tools are installed
        if [[ -d $(xcode-select -p 2>/dev/null) ]]; then
            cmd_tools_installed=true
            echo "1. Install Command Line Tools (must be installed before you" \
                "can install Homebrew) ${green}(Already installed)${nc}"
        else
            cmd_tools_installed=false
            echo "1. Install Command Line Tools (must be installed before you" \
                "can install Homebrew) ${red}(Not Installed)${nc}"
        fi
        
        # Checks if Homebrew, zsh, and vim are installed
        if ! hash brew &>/dev/null; then
            brew_installed=false
            echo "2. Install Homebrew (must be installed before installing zsh" \
                "or vim) ${red}(Not installed)${nc}"
            echo "3. Install zsh via Homebrew ${red}(Not installed)${nc}"
            echo "4. Install vim via Homebrew ${red}(Not installed)${nc}"
        else
            brew_installed=true
            echo "2. Install Homebrew (must be installed before installing zsh" \
                "or vim) ${green}(Already installed)${nc}"
            if [[ $brew_vim_installed = true ]]; then
                echo "3. Install vim via Homebrew ${green}(Already installed)${nc}"
            else
                echo "3. Install vim via Homebrew ${red}(Not installed)${nc}"
            fi

            if [[ $brew_zshell_installed = true ]]; then
                echo "4. Install zsh via Homebrew ${green}(Already installed)${nc}"
            else
                echo "4. Install zsh via Homebrew ${red}(Not installed)${nc}"
            fi
        fi
        
        # Checks if oh my zsh was installed
        if [[ -d ~/.oh-my-zsh/ ]]; then
            oh_my_zsh_installed=true
            echo "5. Install oh my zsh (recommended to install zsh via Homebrew" \
                "first) ${green}(Already installed)${nc}"
        else
            oh_my_zsh_installed=false
            sed -i .bak 's/^ZshLSCOLORS=.*/ZshLSCOLORS=false/g' .setup-status.txt
            echo "5. Install oh my zsh (recommended to install zsh via Homebrew" \
                "first) ${red}(Not installed)${nc}"
        fi

        # Uses data saved in '.setup-status.txt' to tell if custom aliases were
        # added to '.zshrc' 
        if [[ $zsh_aliases = true && $zsh_lscolors = true ]]; then
            echo "6. Add custom zsh configurations ${green}(Already added)${nc}"
        elif [[ $zsh_aliases = false && $zsh_lscolors = false ]]; then
            echo "6. Add custom zsh configurations ${red}(Not added)${nc}"
        else
            echo "6. Add custom zsh configurations ${yellow}(Partially added)${nc}"
        fi
        
        # Uses data saved in '.setup-status.txt' to tell if custom vimrc was
        # added to the home directory
        if [[ $vim_resource = true ]]; then
            echo "7. Add custom vim resource ${green}(Already added)${nc}"
        else
            echo "7. Add custom vim resource ${red}(Not added)${nc}"
        fi
        
        # Uses data saved in '.setup-status.txt' to tell if the terminal profile
        # has been added
        if [[ $term_profile = true ]]; then
            echo "8. Add the Terminal Profile ${green}(Already added)${nc}"
        else
            echo "8. Add the Terminal Profile ${red}(Not added)${nc}"
        fi

        echo "9. Stop and exit script"
        read option
        case $option in
            1)
                clear
                # Updates commands line tools
                if [[ $cmd_tools_installed = true ]]; then    
                    echo "${cyan}The command-line tools are already installed${nc}"
                    printf "We will now install updates for the command-line tools. "
                    read -p "Press [Enter] to begin."
                    echo "Checking for and installing command-line tool updates..."
                    softwareupdate --install -a || {
                        echo "${red}Failed to check for and/or install updates" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        continue
                    }
                    echo -e "\n${green}The command-line tools have finished updating${nc}"
                # Installs command line tools
                else
                    printf "We will now install the command-line tools. "
                    read -p "Press [Enter] to begin."
                    echo "Installing command-line tools..."
                    xcode-select --install || {
                        echo "${red}Failed to install the command-line tools${nc}" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        continue
                    }
                    printf "%sA window will open, prompting you to install the command-line tools. " "$cyan"
                    read -p "Press [Enter] to continue, when it has fully installed.${nc}"
                    if [[ -d $(xcode-select -p 2>/dev/null) ]]; then
                        echo -e "\n${green}The command-line tools have been installed${nc}"
                    else
                        echo -e "\n${red}Either the command-line tools have not fully installed" \
                            "or the script failed to install them${nc}" >&2
                    fi
                fi
                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            2)
                clear
                read -p "We will now install/upgrade Homebrew. Press [Enter] to begin."
                
                install_homebrew() {
                    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install > homebrew-installer || {
                        echo -e "\n${red}Failed to download the Homebrew installer${nc}"
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }
                    /usr/bin/ruby homebrew-installer || {
                        echo -e "\n${red}Failed to $1 Homebrew${nc}"
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }
                    rm homebrew-installer
                    echo "Checking for system problems..."
                    brew doctor
                    echo -e "${cyan}\nPlease check above at the results of the system check, and make sure there are no problems, and if there are, to resolve them"
                }

                if [[ $cmd_tools_installed = false ]]; then
                    echo "${red}The command line tools are not installed"
                    echo "${cyan}The command line tools must be installed in order to install Homebrew${nc}"
                    read -p "Press [Enter] to return to the automatic setup menu"
                    clear
                    continue
                fi

                if [[ $brew_installed = false ]]; then
                    echo "Installing Homebrew"
                    install_homebrew "install"
                    echo -e "\n${green}Successfully installed Homebrew${nc}"
                else
                    echo "Upgrading Homebrew..."
                    install_homebrew "upgrade"
                    echo -e "\n${green}Successfully upgraded Homebrew${nc}"
                fi
                
                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            3)
                clear
                read -p "We will now install/upgrade vim via Homebrew. Press [Enter] to begin."
                
                software_check "vim" || continue
                
                if [[ $brew_vim_installed = true ]]; then
                    echo "Upgrading vim..."
                    brew upgrade vim || {
                        echo -e "\n${red}Failed to upgrade vim${nc}" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }
                    echo -e "\n${green}Finished upgrading vim${nc}"
                else
                    echo "Installing vim..."
                    brew install vim || {
                        echo -e "\n${red}Failed to install vim${nc}" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }

                    # Makes sure that vim was installed
                    if [[ $(brew list vim &>/dev/null; echo $?) = 0 ]]; then
                        brew_vim_installed=true
                        echo -e "\n${green}Finished installing vim${nc}"
                    else
                        brew_vim_installed=false
                        echo -e "\n${red}Failed to install vim${nc}" >&2
                    fi
                fi

                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            4)
                clear
                read -p "We will now install/upgrade zsh via Homebrew. Press [Enter] to begin."
                
                software_check "zsh" || continue

                if [[ $brew_zshell_installed = true ]]; then
                    echo "Upgrading zsh..."
                    brew upgrade zsh || {
                        echo -e "\n${red}Failed to upgrade zsh${nc}" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }
                    echo -e "\n${green}Finished upgrading zsh${nc}"
                else
                    echo "Installing zsh..."
                    brew install zsh || {
                        echo -e "\n${red}Failed to install zsh${nc}" >&2
                        read -p "Press [Enter] to return to the automatic setup menu"
                        clear
                        continue
                    }

                    # Makes sure that zsh was installed
                    if [[ $(brew list zsh &>/dev/null; echo $?) = 0 ]]; then
                        brew_zshell_installed=true
                        echo -e "\n${green}Finished upgrading zsh${nc}"
                    else
                        brew_zshell_installed=flase
                        echo -e "\n${red}Failed to upgrade zsh${nc}" >&2
                    fi
                fi

                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            5)
                clear
                echo "${cyan}After installing 'oh my zsh', a new session will" \
                    "be started in the same window, requiring you to enter 'exit'" \
                    "into the terminal to return to the setup${nc}"
                read -p "We will now install 'oh my zsh'. Press [Enter] to begin."

                echo "Downloading installer and installing 'oh my zsh'..."
                sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || {
                    if [[ ! -d ~/.oh-my-zsh ]]; then
                        echo -e "\n${red}Failed to download and/or install 'oh my zsh'${nc}" >&2
                    fi

                    read -p "Press [Enter] to return to the automatic setup menu"
                    clear
                    continue
                }

                echo -e "${green}\n'oh my zsh' has been installed"
                echo "${cyan}Note: To apply the changes to your current session," \
                    "use 'source ~/.zshrc'${nc}"
                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            6)
                clear
                echo "${cyan}If you plan on installing zsh via Homebrew, please do that first before doing this, as it will overwrite any changes to '.zshrc' from before it's installed. also note that if you already have run this and have aliases in '.zshrc', duplicates will be created in the file.${nc}"
                read -p "We will now add custom zsh. Press [Enter] to begin."

                if [[ $zsh_lscolors = true ]]; then
                    # Should always be skipped in this situation, because it could screw something up
                    echo "Skipping the modification of 'LSCOLORS'"
                else
                    echo "Modifying LSCOLORS..."
                    sed -i .bak 's/^export LSCOLORS=/#export LSCOLORS=/' ~/.oh-my-zsh/lib/theme-and-appearance.zsh
                    sed -i .bak '/^#export LSCOLORS/a \
                        export LSCOLORS="exgxfxDxcxegDhabagacaD" \
                        ' ~/.oh-my-zsh/lib/theme-and-appearance.zsh
                    sed -i .bak 's/^ZshLSCOLORS=.*/ZshLSCOLORS=true/g' .setup-status.txt
                    zsh_lscolors=true
                fi

                if [[ $zsh_aliases = true ]]; then
                    printf "It apears that you have already added the custom aliases to '.zshrc'. "
                    read -p "Would you like to add them again? [y/n] " add_again
                    case "$add_again" in
                        y*|Y*) 
                            echo "Adding custom aliases '.zshrc'..."
                            echo -e "$zshrc_content" >> ~/.zshrc
                            sed -i .bak 's/^ZshAliases=.*/ZshAliases=true/g' .setup-status.txt
                            ;;
                        n*|N*)
                            echo "Skipping adding custom aliases"
                            ;;
                        *)  #TODO: Fix this so that it repeats if incalid option used
                            echo "${red}Invalid option: ...${nc}"
                            ;;
                    esac
                else
                    echo "Adding custom aliases '.zshrc'..."
                    echo -e "$zshrc_content" >> ~/.zshrc
                    sed -i .bak 's/^ZshAliases=.*/ZshAliases=true/g' .setup-status.txt
                    zsh_aliases=true
                fi

                echo -e "\n${green}The custom zsh settings have been applied${nc}"
                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            7)
                clear
                read -p "We will now add a custom vim resource file. Press [Enter] to begin."
                if [[ $vim_resource = true ]]; then
                    echo "Backing up current '.vimrc'..."
                    cp ~/.vimrc ~/.vimrc.bak
                    echo "Overwriting current '.vimrc'..."
                    creating_vimrc || continue
                else
                    echo "Creating and adding contents to '.vimrc'..."
                    creating_vimrc || continue
                fi

                echo -e "\n${green}The custom vim resource file has been created"
                echo "${cyan}Note: To apply the changes to your current session," \
                    "use 'source ~/.vimrc'${nc}"
                read -p "Press [Enter] to return to the automatic setup menu"
                clear
                ;;
            8)
                clear
                read -p "We will now add the Terminal Profile. Press [Enter] to begin."
                open terminal\ profile/Basic\ \(Modified\).terminal || {
                    echo "${red}Failed to open the Terminal Profile${nc}" >&2
                    read -p "Press [Enter] to return to the automatic setup menu"
                    continue
                }
                sed -i .bak 's/^TermProfile=.*/TermProfile=true/g' .setup-status.txt
                # TODO: Maybe reword the echo below
                echo "${cyan}Note: If you want to use this profile by default, you will need to edit the settings and set the profile as the default one."
                echo "Note 2: You will most likely have to allow your system to open the profile, as it will say that it can't verify the creator.${nc}"
                read -p "Press [Enter] to return to the automatic setup menu"
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
