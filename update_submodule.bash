#!/usr/bin/env bash
#
# Automate the process of updating the submodule.
#
# Version: v1.0.0
# License: MIT License
#          Copyright (c) 2024 Hunter T. (StrangeRanger)
#
########################################################################################
####[ Global Variables ]################################################################


readonly C_SUBMODULE_PATH="submodules/dotfiles"

## ANSI color codes.
C_YELLOW="$(printf '\033[1;33m')"
C_GREEN="$(printf '\033[0;32m')"
C_BLUE="$(printf '\033[0;34m')"
C_CYAN="$(printf '\033[0;36m')"
C_RED="$(printf '\033[1;31m')"
C_NC="$(printf '\033[0m')"
readonly C_YELLOW C_GREEN C_BLUE C_CYAN C_RED C_NC

## Shorthanded variables for colorized output.
readonly C_WARNING="${C_YELLOW}==>${C_NC} "
readonly C_SUCCESS="${C_GREEN}==>${C_NC} "
readonly C_ERROR="${C_RED}ERROR:${C_NC} "
readonly C_INFO="${C_BLUE}==>${C_NC} "
readonly C_NOTE="${C_CYAN}==>${C_NC} "


####[ Functions ]#######################################################################


####
# Check the status of the submodule and perform the necessary actions.
#
# RETURNS:
#   - 0: The submodule is up to date.
#   - 1: The submodule is out of date.
#   - 2: The submodule is not initialized.
#   - 3: The submodule has merge conflicts.
submodule_status() {
    local git_status
    git_status="$(git submodule status "$C_SUBMODULE_PATH")"
    git_status=${git_status:0:1}

    case "$git_status" in
        +)
            echo "${C_NOTE}The submodule at '$C_SUBMODULE_PATH' is out of date"
            echo "${C_INFO}Updating submodule..."
            git submodule update --remote "$C_SUBMODULE_PATH" || {
                echo "${C_ERROR}Failed to update submodule '$C_SUBMODULE_PATH'"
                exit 1
            }
            return 1
            ;;
        -)
            echo "${C_WARNING}The submodule at '$C_SUBMODULE_PATH' is not initialized"
            echo "${C_INFO}Initializing submodule..."
            git submodule update --init "$C_SUBMODULE_PATH" || {
                echo "${C_ERROR}Failed to initialize submodule '$C_SUBMODULE_PATH'"
                exit 1
            }
            return 2
            ;;
        U)
            echo "${C_ERROR}The submodule at '$C_SUBMODULE_PATH' has merge conflicts"
            return 3
            ;;
        *)
            echo "${C_SUCCESS}The submodule at '$C_SUBMODULE_PATH' is up to date"
            return 0
            ;;
    esac
}


####[ Main ]############################################################################


if [[ ! -d $C_SUBMODULE_PATH ]]; then
    echo "${C_ERROR}Submodule '$C_SUBMODULE_PATH' not found"
    exit 1
fi

while true; do
    submodule_status
    case $? in
        0) break ;;
        1) continue ;;
        2) continue ;;
        3) exit 1 ;;
    esac
done
