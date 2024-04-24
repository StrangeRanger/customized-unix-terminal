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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git colored-man-pages copybuffer copypath copyfile bgnotify)  # Desktop
plugins=(git colored-man-pages)  # Server

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
zsh_completion="${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src"
[[ -d $zsh_completion ]] && fpath+=${zsh_completion}

source $ZSH/oh-my-zsh.sh


####[ Personal Configurations ]#########################################################
####[[ Aliases ]]#######################################################################
####[[[ Group 1 ]]]#####################################################################


## Update based aliases.
alias updatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r"
alias updatecopilot="bash ~/Programs/mass-git/mass-git -p ~/.config/nvim/pack/github/ -r"
alias updateapt="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias updateomz="omz update"
alias updateall="updateapt; updateomz; updatecopilot; updatezshplugins"


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


####[[ Environmental Variables ]]#######################################################


## Modifies the colors of files and directories in the terminal.
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# PATH value...
export PATH="$PATH:/home/hunter/.local/bin"


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
[[ -f $fzf_tab ]] && hash fzf 2>/dev/null && source "$fzf_tab"


####[[ Others ]]########################################################################
#### These are generally configurations set up by setup scripts or other programs.
