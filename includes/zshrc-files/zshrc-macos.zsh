# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

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
export ZSH="/Users/hunter/.oh-my-zsh"

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
plugins=(colored-man-pages copybuffer copypath copyfile bgnotify zsh-autosuggestions)

# https://github.com/zsh-users/zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# User Configurations

########################################################################################
#### [ General Aliases ]

########################################################################################
#### [[ Group 1 ]]


alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
alias edisk="cd /Volumes && ll"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias dl="lsd -lah"
alias dll="lsd -lh"

## GNU command aliases
alias cp="gcp"
alias mv="gmv"


#### End of [[ Group 1 ]]
########################################################################################
#### [[ Group 2 ]]
#### Due to the sheer number of commands, I find it difficult to remember them all. So
#### the aliases below are contains commands that I find difficult to remember.


alias listtools="echo -e \"
########################################################################################
#### [ Package Manager installed commands ]

asciinema  - Terminal session recorder.
bandwhich  - Terminal bandwidth utilization tool.
bat        - Clone of cat(1) with syntax highlighting and Git integration.
codespell  - Check code for common misspellings.
duf        - Disk Usage/Free Utility - a better 'df' alternative.
fd         - A simple, fast and user-friendly alternative to find.
gh         - GitHub's official command line tool.
grex       - Generates regular expressions from user-provided test cases.
http       - User-friendly cURL replacement (command-line HTTP client).
m          - Swiss Army Knife for macOS.
mas        - Mac App Store command line interface.
muffet     - Fast website link checker in Go.
ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du'.
pipenv     - Python dependency management tool.
pipx       - Install and Run Python Applications in Isolated Environments.
pyenv      - Simple Python version management.
pstree     - List processes as a tree.
tldr       - Simplified and community-driven man pages.
youtube-dl - Command-line program to download videos from YouTube.com and other video
             sites.

########################################################################################
#### [[ Grouped commands ]]

listtools_formatters - List of code formatters and linters.
listtools_conversion - List of programs used for converting the formats of videos,
                       images, etc.


########################################################################################
#### [ Keyboard combinations ]

Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'.
\""
alias listtools_formatters="echo -e \"
########################################################################################
#### [ Code formatters and linters ]

black      - The uncompromising Python code formatter.
prettier   - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML.
pylint     - It's not just a linter that annoys you!
shellcheck - Shell script analysis tool.
\""
alias listtools_conversion="echo -e \"
########################################################################################
#### [ Image and video formatters ]

ffmpeg - FFmpeg is a collection of libraries and tools to process multimedia content.
magick - Convert between image formats as well as resize an image, blur, crop,
         despeckle, dither, draw on, flip, join, re-sample, and much more.
\""


#### End of [[ Group 2]]
########################################################################################

#### End of [ General Aliases ]
########################################################################################
#### [ SSH and SFTP Server Aliases ]


# Main server ssh
alias ---="---"
alias ---="---"
alias ---="---"
alias ---="---"


#### End of [ SSH and SFTP Server Aliases ]
########################################################################################
#### [ Environmental Variables ]


## NVM setup...
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path purpose:
#   /usr/local/opt/curl/bin:  ???
#   /usr/local/sbin:          ???
export PATH="/usr/local/opt/curl/bin:/usr/local/sbin:$PATH"

# Modifies colors of files and directories when using `ls`.
export LSCOLORS="exgxfxDxcxegDaabagacaD"
## Version of LSCOLORS compatible with zsh and GNU based commands.
## You can find more information about LS_COLORS and why it's needed in addition to LSCOLORS,
## here: https://github.com/ohmyzsh/ohmyzsh/issues/6060#issuecomment-327934559
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Set the ssh authentication socket to use 1Password
export ---=---


#### End of [ Environmental Variables ]
########################################################################################
#### [ Sourced Files ]


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Zsh "plugin" installed via git.
# Alternative install methods:
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


#### End of [ Sourced Files ]
########################################################################################


# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
