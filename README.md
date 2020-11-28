# Mac Terminal Style Config

This repository contains all the configurations that I personally use for my terminal style and behavior, on the macOS. Previously in v1.x.x, There was an automatic setup script but I decided I didn't really want to maintain it, so I just scrapped it. So in v2.x.x, I've just compiled all of the configurations here in this README.md.

| Table of Contents |
| ----------------- |
| Prerequisites     |
| Homebrew Installed Programs |
|

## Prerequisite

The majority of the things in this guide require the use of Homebrew, so I'll provide a quick little guide to install it. It's as simple as executing this command in the Terminal app: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Homebrew Installed Programs

The programs below are ones that I personally have installed on my Mac and find useful or think is handy to have when neccessary.

| Programs      | Description |
|---------------|--------------------------------------------------|
| blackbox      | Safely store secrets in Git/Mercurial/Subversion |
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

### Oh-my-zsh

ksjdflksjfd

### Powerlevel10K

lskdjflksjdfklsjdf

### Modifying ZSH Resource File

In `~/.oh-my-zsh/lib/theme-and-appearance.zsh`, comment out the line that begins with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

Place the text below at or close to the bottom of `~/.zshrc`.

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

## Customizing Bash Shell

Place the text below at the top of `~/.bash_profile`.

```bash
export PS1="\[\033[32m\]\u@\h:\[\033[34m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS="exgxfxDxcxegDhabagacaD"
```

Then place the text below at or close to the bottom of `~/.bash_profile`.

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

## Vim Resource File

Next you will want to then create `.vimrc` in your home directory and add the following to the file:

```vimrc
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
