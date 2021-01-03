# Mac Terminal Style Config

This repository contains all the configurations that I personally use for the style and behavior of the macOS terminal. In addition, I've listed all of the programs that I find useful or good to have at a second's notice that can be installed via Homebrew.

| Table of Contents |
| ----------------- |
| [Prerequisites](#prerequisite) |
| [Homebrew Installed Programs](#homebrew-installed-programs) |
| [Customizing ZSH Shell](#customizing-zsh-shell) |
| [Terminal Profile](#terminal-profile) |
| [Vim Resource File](#vim-resource-file) |

## Prerequisite

The majority of this README requires the use of Homebrew. So if you don't currently have it installed, you can install it via this command: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Homebrew Installed Programs

The programs below are ones that I have installed on my Mac via Homebrew. They are either programs that I actively use or find useful to have whenever I need them.

| Programs      | Description | Other Info |
|---------------|-------------| -----------|
| [autopep8](https://formulae.brew.sh/formula/autopep8) | Automatically formats Python code to conform to the PEP 8 style guide | This can also be installed via pip |
| [blackbox](https://formulae.brew.sh/formula/blackbox) | Safely store secrets in Git/Mercurial/Subversion | Commands are prefixed with `blackbox_` |
| [cloc](https://github.com/AlDanial/cloc) | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages |
| [curl](https://formulae.brew.sh/formula/curl) | Get a file from an HTTP, HTTPS or FTP server |
| [dos2unix](https://formulae.brew.sh/formula/dos2unix) | Convert text between DOS, UNIX, and Mac formats |
| [duti](https://formulae.brew.sh/formula/duti) | Set default document and URL handlers |
| [fd](https://formulae.brew.sh/formula/fd) | A simple, fast and user-friendly alternative to find |
| [git](https://formulae.brew.sh/formula/git) | Distributed revision control system |
| [gitleaks](https://formulae.brew.sh/formula/gitleaks) | Audit git repos for secrets |
| [gnupg](https://formulae.brew.sh/formula/gnupg) | GNU Pretty Good Privacy (PGP) package | Command: `gpg` |
| [hstr](https://formulae.brew.sh/formula/hstr) | Easily view, navigate, sort and use your command history with shell history suggest box |
| [htop](https://formulae.brew.sh/formula/htop) | Improved top (interactive process viewer) |
| [jq](https://formulae.brew.sh/formula/jq) | Command-line JSON processor |
| [mkdocs](https://formulae.brew.sh/formula/mkdocs) | Project documentation with Markdown |
| [nmap](https://formulae.brew.sh/formula/nmap) | Network exploration tool and security / port scanner |
| [ncdu](https://formulae.brew.sh/formula/ncdu) | NCurses Disk Usage |
| [pstree](https://formulae.brew.sh/formula/pstree) | List processes as a tree |
| [pyenv](https://formulae.brew.sh/formula/pyenv) | Python version management |
| [shellcheck](https://formulae.brew.sh/formula/shellcheck) | Shell script analysis tool |
| [shfmt](https://formulae.brew.sh/formula/shfmt) | Format shell programs |
| [speedtest-cli](https://formulae.brew.sh/formula/speedtest-cli) | Command line interface for testing internet bandwidth using speedtest.net |
| [symboliclinker](https://github.com/nickzman/symboliclinker) | A contextual menu plugin & service for Mac OS X that allows users to make symbolic links in the Finder | Not a command |
| [terminal-notifier](https://formulae.brew.sh/formula/terminal-notifier) | Send macOS User Notifications from the command-line | Not a command |
| [thefuck](https://formulae.brew.sh/formula/thefuck) | Programatically correct mistyped console commands |
| [tmux](https://formulae.brew.sh/formula/tmux) | Terminal multiplexer |
| [trash](https://formulae.brew.sh/formula/trash) | Move files/folders to the trash |
| [tree](https://formulae.brew.sh/formula/tree) | Display directories as trees (with optional color/HTML output) |
| [vim](https://formulae.brew.sh/formula/vim) | Vi 'workalike' with many additional features |
| [wifi-password](https://formulae.brew.sh/formula/wifi-password) | Show the current WiFi network password |
| [wget](https://formulae.brew.sh/formula/wget) | Internet file retriever |
| [zip](https://formulae.brew.sh/formula/zip) | Compression and file packaging/archive utility |
| [zsh](https://formulae.brew.sh/formula/zsh) | UNIX shell (command interpreter) | Not a command |

If you'd like to install all the programs listed above, execute the following command in the Terminal: `brew install autopep8 blackbox cloc curl dos2unix duti fd git gitleaks gnupg hstr htop jq mkdocs nmap ncdu pstree pyenv shellcheck shfmt speedtest-cli terminal-notifier thefuck tmux trash tree vim wifi-password wget zip zsh && brew install --cask symboliclinker`

## Customizing ZSH Shell

### Framework

The framework that I use and find is the best is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009.

### Shell Theme

The theme that I use in combination with oh-my-zsh is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable, and it's a theme that I very much recommend.

### ZSH Resource File

#### Custom Aliases

Below is a list of "General Custom Aliases" that I use. You will want to place the code below at the bottom of your zshrc file, located:  `~/.zshrc`

```bash
################################################################################
#
# [ General Custom Aliases ]
#
####
    alias edisk="cd /Volumes && ll"
    alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
    alias batterylife="pmset -g batt"
    alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
    # Prints out a bunch of useful commands that I might easily forget about
    alias listtools="echo -e \
        \"\n########################################\" \
        \"\n# Homebrew installed commands\" \
        \"\n###\" \
        \"\n    autopep8      - Automatically formats Python code to conform to the PEP 8\" \
        \"\n                    style guide\" \
        \"\n    cloc          - Counts blank lines, comment lines, and physical lines of\" \
        \"\n                    source code in many programming languages\" \
        \"\n    curl          - Get a file from an HTTP, HTTPS or FTP server\" \
        \"\n    dos2unix      - Convert text between DOS, UNIX, and Mac formats\" \
        \"\n    duti          - Set default document and URL handlers\" \
        \"\n    fd            - A simple, fast and user-friendly alternative to find\" \
        \"\n    git           - Distributed revision control system\" \
        \"\n    gitleaks      - Audit git repos for secrets\" \
        \"\n    gpg           - GNU Pretty Good Privacy (PGP) package\" \
        \"\n    hstr          - Easily view, navigate, sort and use your command history with\" \
        \"\n                    shell history suggest box\" \
        \"\n    htop          - Improved top (interactive process viewer)\" \
        \"\n    jq            - Command-line JSON processor\" \
        \"\n    mkdocs        - Project documentation with Markdown\" \
        \"\n    nmap          - Network exploration tool and security / port scanner\" \
        \"\n    ncdu          - NCurses Disk Usage\" \
        \"\n    pstree        - List processes as a tree\" \
        \"\n    pyenv         - Python version management\" \
        \"\n    shellcheck    - Shell script analysis tool\" \
        \"\n    shfmt         - Format shell programs\" \
        \"\n    speedtest-cli - Command line interface for testing internet bandwidth using\" \
        \"\n                    speedtest.net\" \
        \"\n    fuck          - Programatically correct mistyped console commands\" \
        \"\n    tmux          - Terminal multiplexer\" \
        \"\n    trash         - Move files/folders to the trash\" \
        \"\n    tree          - Display directories as trees (with optional color/HTML output)\" \
        \"\n    vim           - Vi 'workalike' with many additional features\" \
        \"\n    wifi-password - Show the current WiFi network password\" \
        \"\n    wget          - Internet file retriever\" \
        \"\n    zip           - Compression and file packaging/archive utility\" \
        \"\n\" \
        \"\n\" \
        \"\n########################################\" \
        \"\n# Oh-my-zsh plugin commands\" \
        \"\n###\" \
        \"\n    copydir   - Copies the path of your current folder to the system clipboard\" \
        \"\n    copyfile  - Puts the contents of a file in your system clipboard so you can\" \
        \"\n                paste it anywhere\" \
        \"\n    h         - Prints your command histor\" \
        \"\n    hs        - Use grep to search your command history\" \
        \"\n    hsi       - Use grep to do a case-insensitive search of your command history\" \
        \"\n    urlencode - URL-encodes the given string\" \
        \"\n    urldecode - URL-decodes the given string\" \
        \"\n\" \
        \"\n    ###################################\" \
        \"\n    # Keyboard combinations\" \
        \"\n    ###################################\" \
        \"\n    Ctrl + O - Allows you to copy what you are currently typing, via Ctrl + O\" \
        \"\n\" \
        \"\n    ###################################\" \
        \"\n    # Command aliases\" \
        \"\n    ###################################\" \
        \"\n    listtools_git  - Lists a link to all of the git aliases (will change in future)\" \
        \"\n    listtools_nmap - Lists nmap aliases\" \
        \"\n    listtools_osx  - Lists osx aliases\" \
        \"\n\""
    alias listtools_git="echo \"https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases\""
    alias listtools_nmap="echo -e \
        \"\n########################################\" \
        \"\n# Nmap aliases\" \
        \"\n###\" \
        \"\n    nmap_open_ports            - Scan for open ports on target\" \
        \"\n    nmap_list_interfaces       - List all network interfaces on host where the\" \
        \"\n                                 command runs\" \
        \"\n    nmap_slow                  - Slow scan that avoids to spam the targets logs\" \
        \"\n    nmap_fin                   - Scan to see if hosts are up with TCP FIN scan\" \
        \"\n    nmap_full                  - Aggressive full scan that scans all ports, tries\" \
        \"\n                                 to determine OS and service versions\" \
        \"\n    nmap_check_for_firewall    - TCP ACK scan to check for firewall existence\" \
        \"\n    nmap_ping_through_firewall - Host discovery with SYN and ACK probes instead\" \
        \"\n                                 of just pings to avoid firewall restrictions\" \
        \"\n    nmap_fast                  - Fast scan of the top 300 popular ports\" \
        \"\n    nmap_detect_versions       - Detects versions of services and OS, runs on all ports\" \
        \"\n    nmap_check_for_vulns       - Uses vulscan script to check target services for\" \
        \"\n                                 vulnerabilities\" \
        \"\n    nmap_full_udp              - Same as full but via UDP\" \
        \"\n    nmap_traceroute            - Try to traceroute using the most common ports\" \
        \"\n    nmap_full_with_scripts     - Same as nmap_full but also runs all the scripts\" \
        \"\n    nmap_web_safe_osscan       - Little \"safer\" scan for OS version as connecting\" \
        \"\n                                 to only HTTP and HTTPS ports doesn't look so attacking\" \
        \"\n    nmap_ping_scan             - ICMP scan for active hosts\" \
        \"\n\""
    alias listtools_osx="echo -e \
        \"\n########################################\" \
        \"\n# OSX commands\" \
        \"\n###\" \
        \"\n    tab         - Open the current directory in a new tab\" \
        \"\n    split_tab   - Split the current terminal tab horizontally\" \
        \"\n    vsplit_tab  - Split the current terminal tab vertically\" \
        \"\n    ofd         - Open the current directory in a Finder window\" \
        \"\n    pfd         - Return the path of the frontmost Finder window\" \
        \"\n    pfs         - Return the current Finder selection\" \
        \"\n    cdf         - cd to the current Finder directory\" \
        \"\n    pushdf      - pushd to the current Finder directory\" \
        \"\n    pxd         - Return the current Xcode project directory\" \
        \"\n    cdx         - cd to the current Xcode project directory\" \
        \"\n    quick-look  - Quick-Look a specified file\" \
        \"\n    man-preview - Open a specified man page in Preview app\" \
        \"\n    showfiles   - Show hidden files in Finder\" \
        \"\n    hidefiles   - Hide the hidden files in Finder\" \
        \"\n    music       - Control Apple Music. Use music -h for usage details\" \
        \"\n    spotify     - Control Spotify and search by artist, album, track…\" \
        \"\n    rmdsstore   - Remove .DS_Store files recursively in a directory\" \
        \"\n    btrestart   - Restart the Bluetooth daemon\" \
        \"\n\""
####
#
# End of General Custom Aliases
################################################################################
```

#### Oh-my-zsh Plugins

This is a list of all the oh-my-zsh plugins that I use and find useful. Note that all of the commands provided by these plugins are also in the `listtools` alias provided above.

| Plugins | Description | Other Info |
|---------|-------------|------------|
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Fish-like autosuggestions for zsh | Not a command |
| [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) | Adds colors to man pages | Not a command |
| [colorize](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize) | Cat with syntax highlight support for over 300 supported languages |
| [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer) | Allows you to copy what you are currently typing, via Ctrl + O | Not a command<br>Key Combination: `Ctrl` + `O` |
| [copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir) | Copies the path of your working directory |
| [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile) | Copies the contents of a file |
| [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) | Git aliases |
| [gpg-agents](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gpg-agent) | Enables GPG's gpg-agent if it is not running | Not a command |
| [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history) | History aliases |
| [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap) | Nmap aliases |
| [osx](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx) | Provides a few utilities to make it more enjoyable on macOS |
| [urltools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/urltools) | provides two aliases to URL-encode and URL-decode strings |

Note: Keep in mind that some of these plugins have dependencies, so make sure to check for that.

### Modifying LSCOLOR

In `~/.oh-my-zsh/lib/theme-and-appearance.zsh`, comment out the line that begins with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

Below is a key to help you understand what the values of the LSCOLORS variable mean:

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
| ac | Directory writeable to others (with a sticky bit) | black | green |
| aD | Directory writeable to others (without sticky bit) | black | yellow |

After setting up the new LSCOLORS, you will need to modify the terminal profile ANSI-colors to your liking or import my personal terminal profile (instructions below).

## Terminal Profile

My custom terminal profile is a modified version of the Basic Terminal profile in Catalina. To add it to your list of profiles and make it your default, follow the instructions below:

1. Open the Terminal application.
2. Click on Preferences... > Profiles > *the gear at the bottom left of the window* > Import... > *locate and click on 'Basic (Modified).terminal'*
3. Click on the new terminal profile, then press the "Default" button at the window's bottom.

## Vim Resource File

These configurations modify some of the default vim settings to provide a better vim experience (at least that what I think). To set them, create `.vimrc` in your home directory and add the code below to it:

```vim
" Sets the default vim settings
source $VIMRUNTIME/defaults.vim

" Overwrites specified default setting
set tabstop=4     " Tells vim how many columns a tab counts for
set shiftwidth=4  " 'Levels of indentation', where a level of indentation is shiftwidth columns of whitespace
set expandtab     " Ensure that when you hit tab, it will actually use spaces
set mouse-=a      " Exchanges the ability to move the cursor with your mouse, with the ability to highlight and copy text
```
