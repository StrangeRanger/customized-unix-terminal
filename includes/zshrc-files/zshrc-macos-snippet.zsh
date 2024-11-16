# --8<-- [start:user_config]
####[[ Aliases ]]#######################################################################


###
### [ Group 1 ]
###

## General aliases.
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias edisk="cd /Volumes && ll"
alias zls="eza"
alias rmdsstore="find . -name '*.DS_Store' -type f -delete"
alias code="open -a 'Visual Studio Code.app' ."
alias formatc="find . -name '*.cs' -type f -exec clang-format --style='file:$HOME/Programs/Mine/Formatter Configs/CSharp_clang-format/_clang-format' -i {} +"
alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"

###
### [ Group 2 ]
###
### Due to the number of commands that I find to be useful, I've created aliases
### containing some of these commands. They are specifically commands that I don't
### often use, but are useful to have on hand. Having these aliases allows me to see
### a list of these commands, without having to commit them to memeory.
###

alias lt="echo -e \"
####[ Package Manager installed commands ]##############################################

bandwhich - Terminal bandwidth utilization tool.
bat       - A cat(1) clone with wings.
codespell - Check code for common misspellings.
duf       - Disk Usage/Free Utility - a better 'df' alternative.
fzf       - A command-line fuzzy finder.
ncdu      - ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du'.
pstree    - List processes as a tree.
tmux      - Terminal multiplexer.

####[[ Grouped commands ]]##############################################################

lt_conversion - List of programs used for converting the formats of videos, images, etc.
lt_git        - List of programs used for git related commands.


####[ Keyboard combinations ]###########################################################

Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'.
\""
alias lt_conversion="echo -e \"
########################################################################################
#### [ Image and video formatters ]

ffmpeg - FFmpeg is a collection of libraries and tools to process multimedia content.
magick - Convert between image formats as well as resize an image, blur, crop,
         despeckle, dither, draw on, flip, join, re-sample, and much more.
\""
alias lt_git="echo -e \"
####[ Git Related Commands ]###########################################################

lazygit  - Simple terminal UI for git commands.
git open - Opens the GitHub page for a repo/branch in your browser.
ugit     - ugit helps you undo git commands without much effort.
\""


# --8<-- [end:user_config]
# --8<-- [start:ls_colors]
# Modifies the colors of files and directories when using `ls`.
export LSCOLORS="exgxfxDxcxegDaabagacaD"
## Version of LSCOLORS compatible with zsh and GNU based commands.
## You can find more information about LS_COLORS and why it's needed in addition to LSCOLORS,
## here: https://github.com/ohmyzsh/ohmyzsh/issues/6060#issuecomment-327934559
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"

# --8<-- [end:ls_colors]
