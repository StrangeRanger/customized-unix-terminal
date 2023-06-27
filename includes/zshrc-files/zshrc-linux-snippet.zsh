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
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# User Configurations

# --8<-- [start:user_config]
########################################################################################
#### [ General Aliases ]

########################################################################################
#### [[ Group 1 ]]


alias dryupdatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r -d"
alias updatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r"
alias updateapt="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"


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


######## End of [[ Group 2]]
########################################################################################

#### End of [ General Aliases ]
########################################################################################
# --8<-- [end:user_config]
#### [ Environmental Variables ]


# --8<-- [start:ls_colors]
## Modifies the colors of files and directories in the terminal.
export LS_COLORS="di=34:ln=36:so=35:pi=1;33:ex=32:bd=34;46:cd=1;33;40:su=30;41:sg=30;46:tw=30;42:ow=30;1;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# --8<-- [end:ls_colors]


#### End of [ Environmental Variables ]
########################################################################################
#### [ Sourced Files ]


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh "plugin" installed via git and the following command:
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#### End of [ Sourced Files ]
########################################################################################

