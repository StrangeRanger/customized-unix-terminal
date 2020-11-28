# Mac Terminal Style Config

This repository contains all the configurations that I personally use for the style and behavior of the terminal on macOS. In addition, I've listed all of the programs that can be installed via homebrew, that I find useful or good to have at a times notice.

| Table of Contents |
| ----------------- |
| [Prerequisites](#prerequisite) |
| [Homebrew Installed Programs](#homebrew-installed-programs) |
| [Customizing ZSH Shell](#customizing-zsh-shell) |
| [Vim Resource File](#vim-resource-file) |
| [Terminal Profile](#terminal-profile) |

## Prerequisite

The majority of this README requires the use of Homebrew. So if you don't currently have it installed and would like it installed, execute the following command: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Homebrew Installed Programs

The programs below are ones that I personally have installed on my Mac and find useful or think is handy to have when necessary.

| Programs      | Description |
|---------------|--------------------------------------------------|
| blackbox<br>(contains a set of commands)      | Safely store secrets in Git/Mercurial/Subversion |
| curl          | Get a file from an HTTP, HTTPS or FTP server |
| dos2unix      | Convert text between DOS, UNIX, and Mac formats |
| duti          | Set default document and URL handlers |
| fd            | A simple, fast and user-friendly alternative to find |
| git           | Distributed revision control system |
| gitleaks      | Audit git repos for secrets |
| gnupg<br>(command is: gpg) | GNU Pretty Good Privacy (PGP) package |
| hstr          | Easily view, navigate, sort and use your command history with shell history suggest box |
| htop          | Improved top (interactive process viewer) |
| jq            | Command|line JSON processor |
| mkdocs        | Project documentation with Markdown |
| nmap          | Network exploration tool and security / port scanner |
| ncdu          | NCurses Disk Usage |
| pycodestyle   | Simple Python style checker in one Python file |
| pstree        | List processes as a tree |
| pyenv         | Python version management |
| shellcheck    | Shell script analysis tool |
| shfmt         | Format shell programs |
| speedtest-cli | Command line interface for testing internet bandwidth using speedtest.net |
| terminal-notifier<br>(not a command) | Send macOS User Notifications from the command-line |
| thefuck       | Programatically correct mistyped console commands |
| tmux          | Terminal multiplexer |
| trash         | Move files/folders to the trash |
| tree          | Display directories as trees (with optional color/HTML output) |
| vim           | Vi 'workalike' with many additional features |
| wifi-password | Show the current WiFi network password |
| wget          | Internet file retriever |
| zip           | Compression and file packaging/archive utility |
| zsh<br>(not a command) | UNIX shell (command interpreter) |

If you'd like to install all the programs listed above, execute the following command in the Terminal: `brew install blackbox curl dos2unix duti fd git gitleaks gnupg hstr htop jq mkdocs nmap ncdu pycodestyle pstree pyenv shellcheck shfmt speedtest-cli terminal-notifier thefuck tmux trash tree vim wifi-password wget zip zsh`

## Customizing ZSH Shell

hsfjshfjkshdkfjhsdf

### Framework

The framework that I use and find is the best, is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009.

### Shell Theme

The theme that I use in combination with oh-my-zsh, is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable and it's a theme that I very much recommend.

### Modifying ZSH Resource File

#### Custom Aliases

Below is a list of "General Custom Aliases" that I use. You will want to place the code below at the bottom of your zshrc file, located:  `~/.zshrc`

```bash
################################################################################
#
# [ General Custom Aliases ]
#
####
    
####
#
# End of General Custom Aliases
################################################################################
```

#### Oh-my-zsh Plugins

These are a list of all the plugins that I find useful and such: sjlafkjsdlkfjalksjdflkajsdfljsdlkfjsadklfj

### Modifying LSCOLOR

In `~/.oh-my-zsh/lib/theme-and-appearance.zsh`, comment out the line that begins with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

This is the LSCOLROS value, but separated every two letters with a dash: `ex-gx-fx-Dx-cx-eg-Dh-ab-ag-ac-aD`

Below is a key to help you understand what the value of LSCOLORS mean:

| Letter Code | Type | Text Color | Foreground/Background Color|
| -- | -- | -- | -- |
| ex | Directories | blue | *default* |
| gx | Symbolic link | cyan | *default* |
| fx | Socket | magenta | *default* |
| Dx | Pipe | yellow | *default* |
| cx | Executable | green | *default* |
| eg | Block special | green | cyan
| Dh | Character special | yellow | grey |
| ab | Executable with setuid bit set | black | red |
| ag | Executable with setgid bit set | black | cyan |
| ac | Directory writeable to others (with sticky bit) | black | green |
| aD | Directory writeable to others (without sticky bit) | black | yellow |

## Vim Resource File

Create `.vimrc` in your home directory and add the following to the file:

```vim
source $VIMRUNTIME/defaults.vim
set tabstop=4
set shiftwidth=4
set expandtab
set mouse-=a
```

These configurations modify some of the current vim settings, while still allowing you to use the rest of the default settings.

## Terminal Profile

This is a customized terminal profile that is based off of the Basic profile in macOS Catalina. To add this to your list of profiles and make it your default, follow the instructions below:

1. Open the Terminal application.
2. If you did NOT use the automatic setup script to add the terminal profile:
   1. Click on Preferences... > Profiles > "the gear at the bottom left of the window" > Import... > "locate and click on 'Basic (Modified).terminal'"
3. If you DID use the automatic setup script to add the terminal profile:
   1. Click on Preferences... > Profiles
4. Click on the new terminal profile, then press the "Default" button at the bottom of the window.
