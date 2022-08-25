########################################################################################
#### [ General Aliases ]

########################################################################################
#### [[ Group 1 ]]


alias dryupdatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r -d"
alias updatezshplugins="bash ~/Programs/mass-git/mass-git -p ~/.oh-my-zsh/custom/plugins/ -r"
alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias edisk="cd /Volumes && ll"
alias dll="lsd -lh"
alias dl="lsd -lah"

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