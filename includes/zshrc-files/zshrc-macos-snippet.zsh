# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# If PowerLevel10K's Instant Prompt is enabled, `export GPG_TTY=$(tty)` needs to be
# placed at the top of this file. Find more information here:
# https://unix.stackexchange.com/questions/608842/zshrc-export-gpg-tty-tty-says-not-a-tty/608921#608921
export GPG_TTY=$(tty)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages copybuffer copypath copyfile bgnotify)

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
zsh_completion="${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src"
[[ -d $zsh_completion ]] && fpath+=${zsh_completion}

source $ZSH/oh-my-zsh.sh


####[ Personal Configurations ]#########################################################
# --8<-- [start:user_config]
####[[ Aliases ]]#######################################################################
####[[[ Group 1 ]]]#####################################################################


## General aliases.
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias edisk="cd /Volumes && ll"
alias dll="lsd -lh"
alias dl="lsd -lah"
alias remove_ds_store="find . -name '*.DS_Store' -type f -delete"
alias code="open -a 'Visual Studio Code.app' ."
alias clang_format_recursive="find . -name '*.cs' -type f -exec clang-format --style=file:/Users/hunter/Programs/Mine/Formatter\ Configs/CSharp_clang-format/_clang-format -i {} +"

## Update based aliases.
alias updatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r"
alias updatecopilot="bash ~/Programs/mass-git/mass-git -p ~/.config/nvim/pack/github/ -r"
alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
alias updateomz="omz update"
alias updateall="updatebrew; updateomz; updatecopilot; updatezshplugins"

## GNU command aliases.
alias cp="gcp"
alias mv="gmv"


####[[[ Group 2 ]]]#####################################################################
#### Due to the number of commands that I find to be useful, I've created aliases
#### containing some of these commands. They are specifically commands that I don't
#### often use, but are useful to have on hand. Having these aliases allows me to see
#### a list of these commands, without having to commit them to memeory.

alias lt="echo -e \"
####[ Package Manager installed commands ]##############################################

bandwhich  - Terminal bandwidth utilization tool.
bat        - A cat(1) clone with wings.
cheat      - Allows you to create and view interactive cheatsheets on the command-line.
codespell  - Check code for common misspellings.
duf        - Disk Usage/Free Utility - a better 'df' alternative.
fzf        - A command-line fuzzy finder.
ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du'.
pstree     - List processes as a tree.
tmux       - Terminal multiplexer.

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


####[[[ SSH related commands ]]]########################################################


# SSH related aliases.


####[[ Environmental Variables ]]#######################################################


# 1Password auth socket.
export SSH_AUTH_SOCK="~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

## NVM setup...
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path purpose:
#   /usr/local/opt/curl/bin:       ...
#   /usr/local/sbin:               ???
#   /usr/local/opt/openjdk@17/bin: Prefered java version.
#   /usr/local/opt/node@18/bin:    Prefered node version.
export PATH="/usr/local/opt/curl/bin:/usr/local/sbin:/usr/local/opt/openjdk@17/bin:/usr/local/opt/node@18/bin:$PATH"

# --8<-- [start:ls_colors]
# Modifies colors of files and directories when using `ls`.
export LSCOLORS="exgxfxDxcxegDaabagacaD"
## Version of LSCOLORS compatible with zsh and GNU based commands.
## You can find more information about LS_COLORS and why it's needed in addition to LSCOLORS,
## here: https://github.com/ohmyzsh/ohmyzsh/issues/6060#issuecomment-327934559
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# --8<-- [end:ls_colors]

## Editor configurations.
export EDITOR=nvim
export VISUAL=$EDITOR


####[[ Sourced Files ]]#################################################################


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
zsh_syntax_highlighting="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f $zsh_syntax_highlighting ]] && source "$zsh_syntax_highlighting"

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
zsh_autosuggestions="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[[ -f $zsh_autosuggestions ]] && source "$zsh_autosuggestions"

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
fzf_tab="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab/fzf-tab.plugin.zsh"
[[ -f $fzf_tab ]] && source "$fzf_tab"

# Enable the use of '1password-cli' plugins.
source /Users/hunter/.config/op/plugins.sh

## Azure Auto Completion.
autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az


####[[ Others ]]########################################################################
#### These are generally configurations set up by setup scripts or other programs.


# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
