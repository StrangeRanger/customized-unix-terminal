# Customized Unix Terminal

This repository contains configurations that I use for the terminal's style and behavior, both on my Mac and Linux devices. I've also listed all of the programs that I find useful or good to have at a second's notice, installable via a package manager.

| Table of Contents |
|--------------------|
| [Useful Programs](#useful-programs) |
| [Customizing ZSH Shell](#customizing-zsh-shell) |
| [Vim Resource File](#vim-resource-file) |
| [Terminal Profile](#terminal-profile) |

## Useful Programs

Below is a list of programs I either have installed on my system or find very useful to know about. All the programs are broken up into 5 main installation methods: Homebrew, the OS's Native Package Manager (to which I'll refer to as NPM from now on), pip, gem, and git. There are some programs located in the Homebrew and NPM section that can also be installed via pip or gem. Despite this, those programs will only be listed in the pip and gem section if the program isn't installable by both Homebrew and NPM. That also applies to applications installable via git. The git method is mostly specific to when the documentation doesn't specify a particular package manager but instead mentions cloning the repo. I do not list any programs that are required to be installed via binary files. This means that if a program can be installed on macOS via Homebrew but can only be installed on Linux via the binary files, I will not list that program in the NPM section.

!!! Note
    Keep in mind that the "Native Package Manager" section mainly applies to the apt package mananger. I've not confirmed any of the listed programs to be installable via a package manager other than apt, thought it's safe to assume that most can be.

=== "Homebrew"

    | Programs | Description | Applicable OS's | Other |
    | -- | -- | -- | -- |
    | [autopep8](https://formulae.brew.sh/formula/autopep8) | Automatically formats Python code to conform to the PEP 8 style guide | macOS<br>Linux |
    | [black](https://formulae.brew.sh/formula/black) | The uncompromising Python code formatter | macOS<br>Linux |
    | [blackbox](https://formulae.brew.sh/formula/blackbox) | Safely store secrets in Git/Mercurial/Subversion |macOS<br>Linux | Commands are prefixed with `blackbox_` |
    | [bat](https://formulae.brew.sh/formula/bat) | Clone of cat(1) with syntax highlighting and Git integration | macOS<br>Linux |
    | [cloc](https://github.com/AlDanial/cloc) | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages | macOS<br>Linux |
    | [curl](https://formulae.brew.sh/formula/curl) | Get a file from an HTTP, HTTPS or FTP server | macOS<br>Linux |
    | [dos2unix](https://formulae.brew.sh/formula/dos2unix) | Convert text between DOS, UNIX, and Mac formats | macOS<br>Linux |
    | [duti](https://formulae.brew.sh/formula/duti) | Set default document and URL handlers | macOS |
    | [fd](https://formulae.brew.sh/formula/fd) | A simple, fast and user-friendly alternative to find | macOS<br>Linux |
    | [git](https://formulae.brew.sh/formula/git) | Distributed revision control system | macOS<br>Linux |
    | [gitleaks](https://formulae.brew.sh/formula/gitleaks) | Audit git repos for secrets | macOS<br>Linux |
    | [git-extras](https://formulae.brew.sh/formula/git-extras) | GIT utilities | macOS<br>Linux | Commands:<br>- `git-extras` displays man page<br>- *for commands see man page* |
    | [gnupg](https://formulae.brew.sh/formula/gnupg) | GNU Pretty Good Privacy (PGP) package | macOS<br>Linux | Command: `gpg` |
    | [hub](https://formulae.brew.sh/formula/hub) | A command-line tool that makes git easier to use with GitHub | macOS<br>Linux |
    | [Homebrew Command Not Found](https://github.com/Homebrew/homebrew-command-not-found) | Ubuntu’s command-not-found equivalent for Homebrew on macOS | macOS<br>Linux | Not a command |
    | [hstr](https://formulae.brew.sh/formula/hstr) | Easily view, navigate, sort and use your command history with shell history suggest box | macOS<br>Linux |
    | [htop](https://formulae.brew.sh/formula/htop) | Improved top (interactive process viewer) | macOS<br>Linux |
    | [httpie](https://formulae.brew.sh/formula/httpie) | User-friendly cURL replacement (command-line HTTP client) | macOS<br>Linux | Command: `http` |
    | [jq](https://formulae.brew.sh/formula/jq) | Command-line JSON processor | macOS<br>Linux |
    | [lynis](https://formulae.brew.sh/formula/lynis) | Security and system auditing tool to harden systems | macOS<br>Linux | Recommended install method: [Git](https://github.com/CISOfy/Lynis) |
    | [mkdocs](https://formulae.brew.sh/formula/mkdocs) | Project documentation with Markdown | macOS<br>Linux | Recommended install method: [Pip](https://pypi.org/project/mkdocs/) |
    | [nmap](https://formulae.brew.sh/formula/nmap) | Network exploration tool and security / port scanner | macOS<br>Linux |
    | [ncdu](https://formulae.brew.sh/formula/ncdu) | NCurses Disk Usage | macOS<br>Linux |
    | [pstree](https://formulae.brew.sh/formula/pstree) | List processes as a tree | macOS<br>Linux |
    | [pyenv](https://formulae.brew.sh/formula/pyenv) | Python version management | macOS<br>Linux |
    | [shellcheck](https://formulae.brew.sh/formula/shellcheck) | Shell script analysis tool | macOS<br>Linux |
    | [shfmt](https://formulae.brew.sh/formula/shfmt) | Format shell programs | macOS<br>Linux |
    | [speedtest-cli](https://formulae.brew.sh/formula/speedtest-cli) | Command line interface for testing internet bandwidth using speedtest.net | macOS<br>Linux |
    | [symboliclinker](https://github.com/nickzman/symboliclinker) | A contextual menu plugin & service for Mac OS X that allows users to make symbolic links in the Finder | macOS | Not a command |
    | [terminal-notifier](https://formulae.brew.sh/formula/terminal-notifier) | Send macOS User Notifications from the command-line | macOS<br>Linux | Not a command |
    | [thefuck](https://formulae.brew.sh/formula/thefuck) | Programmatically correct mistyped console commands | macOS<br>Linux |
    | [tldr](https://formulae.brew.sh/formula/tldr) | Simplified and community-driven man pages | macOS<br>Linux |
    | [tmux](https://formulae.brew.sh/formula/tmux) | Terminal multiplexer | macOS<br>Linux |
    | [trash](https://formulae.brew.sh/formula/trash) | Move files/folders to the trash | macOS<br>Linux |
    | [tree](https://formulae.brew.sh/formula/tree) | Display directories as trees (with optional color/HTML output) | macOS<br>Linux |
    | [vim](https://formulae.brew.sh/formula/vim) | Vi 'workalike' with many additional features | macOS<br>Linux |
    | [wget](https://formulae.brew.sh/formula/wget) | Internet file retriever | macOS<br>Linux |
    | [wifi-password](https://formulae.brew.sh/formula/wifi-password) | Show the current WiFi network password | macOS |
    | [wtfutil](https://formulae.brew.sh/formula/wtfutil) | Personal information dashboard for your terminal | macOS<br>Linux | (?) Requires tap: `brew tap wtfutil/wtfutil` |
    | [zip](https://formulae.brew.sh/formula/zip) | Compression and file packaging/archive utility | macOS<br>Linux |
    | [zsh](https://formulae.brew.sh/formula/zsh) | UNIX shell (command interpreter) | macOS<br>Linux | Not a command |

=== "Native Package Manager"

    Applicable Operating Systems: Linux

    | Programs | Description | Other Info |
    | -- | -- | -- |
    | [bat](https://github.com/sharkdp/bat) | Clone of cat(1) with syntax highlighting and Git integration | Command: `batcat` OR `bat` |
    | [cloc](https://github.com/AlDanial/cloc) | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages |
    | [curl](http://curl.haxx.se) | Get a file from an HTTP, HTTPS or FTP server |
    | [dos2unix](https://waterlan.home.xs4all.nl/dos2unix.html) | Convert text between DOS, UNIX, and Mac formats |
    | [git](https://git-scm.com/) | Distributed revision control system |
    | [git-extras](https://github.com/tj/git-extras) | GIT utilities | Commands:<br>- `git-extras` displays man page<br>- *for others see man page* |
    | [gnupg](https://www.gnupg.org/) | GNU Pretty Good Privacy (PGP) package | Command: `gpg` |
    | [hub](https://github.com/github/hub) | A command-line tool that makes git easier to use with GitHub |
    | [htop](https://hisham.hm/htop/) | A cross-platform interactive process viewer |
    | [jq](https://github.com/stedolan/jq) | Command-line JSON processor |
    | [lynis](https://github.com/CISOfy/lynis) | Security and system auditing tool to harden systems | Recommended install method: [Git](https://github.com/CISOfy/Lynis) |
    | [mkdocs](https://www.mkdocs.org/) | Project documentation with Markdown | Recommended install method: [Pip](https://pypi.org/project/mkdocs/) |
    | [nmap](https://nmap.org/) | Network exploration tool and security / port scanner |
    | [ncdu](http://dev.yorhel.nl/ncdu/) | NCurses Disk Usage |
    | [shellcheck](https://www.shellcheck.net/) | Shell script analysis tool |
    | [speedtest-cli](https://github.com/sivel/speedtest-cli/) | Command line interface for testing internet bandwidth using speedtest.net |
    | [thefuck](https://github.com/nvbn/thefuck) | Programmatically correct mistyped console commands |
    | [tldr](https://github.com/tldr-pages/tldr) | Simplified and community-driven man pages | Recommended install method: [Homebrew](https://formulae.brew.sh/formula/tldr) |
    | [tmux](https://tmux.github.io/) | Terminal multiplexer |
    | [trash-cli](https://github.com/andreafrancia/trash-cli) | Move files/folders to the trash | Command: `trash` |
    | [tree](http://mama.indstate.edu/users/ice/tree/) | Display directories as trees (with optional color/HTML output) |
    | [vim](https://www.vim.org/) | Vi 'workalike' with many additional features |
    | [wget](https://www.gnu.org/software/wget/) | Internet file retriever |
    | [zip](http://www.info-zip.org/Zip.html) | Compression and file packaging/archive utility |
    | [zsh](https://www.zsh.org/) | UNIX shell (command interpreter) | Not a command |

=== "Pip"

    Applicable Operating Systems: macOS & Linux

    | Programs | Description | Other Info |
    | -- | -- | -- |
    | [autopep8](https://pypi.org/project/autopep8/) | Automatically formats Python code to conform to the PEP 8 style guide |
    | [black](https://pypi.org/project/black/) | The uncompromising Python code formatter |
    | [blackbox](https://github.com/StackExchange/blackbox) | Safely store secrets in Git/Mercurial/Subversion | Commands are prefixed with `blackbox_` |
    | [gitsome](https://pypi.org/project/gitsome/) | A Supercharged Git/Shell Autocompleter with GitHub Integration |
    | [mkdocs](https://pypi.org/project/mkdocs/) | Project documentation with Markdown |

=== "Gem"

    Applicable Operating Systems: macOS & Linux

    | Programs | Description | Other |
    | -- | -- | -- |
    | [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator) | Automatically generate changelog from your tags, issues, labels, and pull requests on GitHub |


=== "Git"

    Applicable Operating Systems: macOS & Linux

    | Programs | Description | Other |
    | -- | -- | -- |
    | [.tmux](https://github.com/gpakosz/.tmux) | 🇫🇷 Oh my tmux! My self-contained, pretty & versatile tmux configuration made with ❤️ | Not a command (though tmux must be installed) |


## Customizing ZSH Shell

### Framework

The framework that I use and find to be the best is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009. So it's had many years to evolve and perfect itself.

### Shell Theme

The theme that I use in combination with oh-my-zsh is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable and very appealing to the eyes.

### ZSH Resource File

#### Custom Aliases

=== "macOS"
    Below is a list of "General Aliases". They are broken up into two groups. The first group is the regular command alias. The second group contains aliases that are meant to provide a list of useful commands, which can be hard to remember due to the sheer number of commands. All of the commands presented in the [Useful Programs](#useful-programs) section are in the second group of the aliases. To use them, you will want to add the code below to the bottom of your `.zshrc` file located in your home directory.

    ```bash
    ################################################################################
    #
    # [ General Aliases ]
    #
    ###
        ########################################################################
        #
        # [ Group 1 ]

        alias edisk="cd /Volumes && ll"
        alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
        alias batterylife="pmset -g batt"
        alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
        # Restart coreaudio on macOS
        alias rscoreaudio="sudo kill -9 \"$(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')\""

        #
        # End of [ Group 1 ]
        ########################################################################

        ########################################################################
        # Due to the sheer number of commands, it's impossible to remember them
        # all. So the aliases below are supposed to make it easier to remember
        # by allowing you to print out a list of useful commands.
        #
        # [ Group 2 ]

        alias listtools="echo -e \
            \"\n########################################\" \
            \"\n# Package Manager installed commands\" \
            \"\n###\" \
            \"\n    autopep8      - Automatically formats Python code to conform to the PEP 8\" \
            \"\n                    style guide\" \
            \"\n    black         - The uncompromising Python code formatter\" \
            \"\n    blackbox_*    - Safely store secrets in Git/Mercurial/Subversion\" \
            \"\n    bat           - Clone of cat(1) with syntax highlighting and Git integration\" \
            \"\n    cloc          - Counts blank lines, comment lines, and physical lines of\" \
            \"\n                    source code in many programming languages\" \
            \"\n    curl          - Get a file from an HTTP, HTTPS or FTP server\" \
            \"\n    dos2unix      - Convert text between DOS, UNIX, and Mac formats\" \
            \"\n    duti          - Set default document and URL handlers\" \
            \"\n    fd            - A simple, fast and user-friendly alternative to find\" \
            \"\n    git           - Distributed revision control system\" \
            \"\n    gitleaks      - Audit git repos for secrets\" \
            \"\n    git-extras    - Opens GIT utilities man page\" \
            \"\n    gpg           - GNU Pretty Good Privacy (PGP) package\" \
            \"\n    hub           - A command-line tool that makes git easier to use with GitHub\" \
            \"\n    hstr          - Easily view, navigate, sort and use your command history with\" \
            \"\n                    shell history suggest box\" \
            \"\n    htop          - Improved top (interactive process viewer)\" \
            \"\n    http          - User-friendly cURL replacement (command-line HTTP client)\" \
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
            \"\n    tldr          - Simplified and community-driven man pages\" \
            \"\n    tmux          - Terminal multiplexer\" \
            \"\n    trash         - Move files/folders to the trash\" \
            \"\n    tree          - Display directories as trees (with optional color/HTML output)\" \
            \"\n    vim           - Vi 'workalike' with many additional features\" \
            \"\n    wget          - Internet file retriever\" \
            \"\n    wifi-password - Show the current WiFi network password\" \
            \"\n    wtfutil       - Personal information dashboard for your terminal\" \
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

        #
        # End of [ Group  2]
        ########################################################################
    ###
    #
    # End of [ General Aliases ]
    ################################################################################

    # Makes alias 'fuck' available
    # It SHOULD be placed at the bottom of your '.zshrc'
    eval $(thefuck --alias)
    ```

=== "Linux"
    Below is a list of "General Aliases". They are broken up into two groups. The first group is the regular command alias. The second group contains aliases that are meant to provide a list of useful commands, which can be hard to remember due to the sheer number of commands. All of the commands presented in the [Useful Programs](#useful-programs) section are in the second group of the aliases. To use them, you will want to add the code below to the bottom of your `.zshrc` file located in your home directory.

    ```bash
    ################################################################################
    #
    # [ General Custom Aliases ]
    #
    ###
        ########################################################################
        #
        # [ Group 1 ]

        alias updateall="sudo apt update && sudo apt upgrade -y"
        alias trm="trash"

        #
        # End of [ Group 1 ]
        ########################################################################

        ########################################################################
        # Due to the sheer number of commands, it's impossible to remember them
        # all. So the aliases below are supposed to make it easier to remember
        # by allowing you to print out a list of useful commands.
        #
        # [ Group 2 ]

        alias listtools="echo -e \
            \"\n########################################\" \
            \"\n# Package Manager installed commands\" \
            \"\n###\" \
            \"\n    autopep8      - Automatically formats Python code to conform to the PEP 8\" \
            \"\n                    style guide\" \
            \"\n    black         - The uncompromising Python code formatter\" \
            \"\n    blackbox_*    - Safely store secrets in Git/Mercurial/Subversion\" \
            \"\n    bat           - Clone of cat(1) with syntax highlighting and Git integration\" \
            \"\n    cloc          - Counts blank lines, comment lines, and physical lines of\" \
            \"\n                    source code in many programming languages\" \
            \"\n    curl          - Get a file from an HTTP, HTTPS or FTP server\" \
            \"\n    dos2unix      - Convert text between DOS, UNIX, and Mac formats\" \
            \"\n    fd            - A simple, fast and user-friendly alternative to find\" \
            \"\n    git           - Distributed revision control system\" \
            \"\n    gitleaks      - Audit git repos for secrets\" \
            \"\n    git-extras    - Opens GIT utilities man page\" \
            \"\n    gpg           - GNU Pretty Good Privacy (PGP) package\" \
            \"\n    hub           - A command-line tool that makes git easier to use with GitHub\" \
            \"\n    hstr          - Easily view, navigate, sort and use your command history with\" \
            \"\n                    shell history suggest box\" \
            \"\n    htop          - Improved top (interactive process viewer)\" \
            \"\n    http          - User-friendly cURL replacement (command-line HTTP client)\" \
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
            \"\n    tldr          - Simplified and community-driven man pages\" \
            \"\n    tmux          - Terminal multiplexer\" \
            \"\n    trash         - Move files/folders to the trash\" \
            \"\n    tree          - Display directories as trees (with optional color/HTML output)\" \
            \"\n    vim           - Vi 'workalike' with many additional features\" \
            \"\n    wget          - Internet file retriever\" \
            \"\n    wtfutil       - Personal information dashboard for your terminal\" \
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
            \"\n\""
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

        #
        # End of [ Group  2]
        ########################################################################
    ###
    #
    # End of [ General Aliases ]
    ################################################################################

    # Makes alias 'fuck' available
    # It SHOULD be placed at the bottom of your '.zshrc'
    eval $(thefuck --alias)
    ```

#### Oh-my-zsh Plugins

=== "macOS"
    This is a list of all the oh-my-zsh plugins that I use and find to provide useful functionality. Note that all of the commands provided by these plugins are also in the `listtools` alias provided above.

    | Plugins | Description | Other Info |
    |---------|-------------|------------|
    | [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) | Adds colors to man pages | Not a command |
    | [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer) | Allows you to copy what you are currently typing, via Ctrl + O | Not a command<br>Key Combination: `Ctrl` + `O` |
    | [copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir) | Copies the path of your working directory |
    | [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile) | Copies the contents of a file |
    | [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history) | History aliases |
    | [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap) | Nmap aliases |
    | [osx](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx) | Provides a few utilities to make it more enjoyable on macOS |
    | [bgnotify](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify) | cross-platform background notifications for long running commands | Not a command |
    | [urltools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/urltools) | provides two aliases to URL-encode and URL-decode strings |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Fish-like autosuggestions for zsh | Not a command<br>To use this, you need to clone the repo: follow the instructions [here](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Fish shell like syntax highlighting for Zsh | Not a command<br>To use this, you need to clone the repo: follow the instructions [here](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh) |

=== "Linux"
    This is a list of all the oh-my-zsh plugins that I use and find to provide useful functionality. Note that all of the commands provided by these plugins are also in the `listtools` alias provided above.

    | Plugins | Description | Other Info |
    |---------|-------------|------------|
    | [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) | Adds colors to man pages | Not a command |
    | [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer) | Allows you to copy what you are currently typing, via Ctrl + O | Not a command<br>Key Combination: `Ctrl` + `O` |
    | [copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir) | Copies the path of your working directory |
    | [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile) | Copies the contents of a file |
    | [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history) | History aliases |
    | [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap) | Nmap aliases |
    | [bgnotify](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify) | cross-platform background notifications for long running commands | Not a command |
    | [urltools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/urltools) | provides two aliases to URL-encode and URL-decode strings |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Fish-like autosuggestions for zsh | Not a command<br>To use this, you need to clone the repo: follow the instructions [here](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Fish shell like syntax highlighting for Zsh | Not a command<br>To use this, you need to clone the repo: follow the instructions [here](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)|

### Modifying LSCOLORS

LSCOLORS is what determines the color of the files and directories in the terminal. To apply my custom LSCOLORS, you'll first need to open `~/.oh-my-zsh/lib/theme-and-appearance.zsh`. With the file open, find and comment out the line beginning with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

You can optionally modify the terminal profile ANSI-colors to change the shading of the colors, to your liking. If you are using macOS, you can alternatively import my personal terminal profile.

Below is a key to help you understand what the values of the LSCOLORS variable mean:

| Letter Code | Type | Text Color | Foreground/Background Color |
| -- | -- | -- | -- |
| ex | Directories | blue | *default* |
| gx | Symbolic link | cyan | *default* |
| fx | Socket | magenta | *default* |
| Dx | Pipe | yellow | *default* |
| cx | Executable | green | *default* |
| eg | Block special | green | cyan |
| Dh | Character special | yellow | grey |
| ab | Executable with setuid bit set | black | red |
| ag | Executable with setgid bit set | black | cyan |
| ac | Directory writeable to others (with a sticky bit) | black | green |
| aD | Directory writeable to others (without sticky bit) | black | yellow |

## Vim Resource File

### With Vundle Plugins

These configurations modify the behavior and look of vim. To make use of all the configurations listed below, you will need to first [install Vundle](https://github.com/VundleVim/Vundle.vim). Once installed, place the code below into your `.vimrc` located at your home directory. Then to install the plugins, open `.vimrc` with vim, then enter `:source %` and `:PluginInstall` (separately). This should trigger Vundle to start installing the plugins specified in the configurations below.

!!! Note
	When using `:source %`, you can ignore any errors that might occur, as this will happen because the plugins aren't installed yet.

```vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" [ Vundle configurations ]
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'luochen1990/rainbow'
Plugin 'davidhalter/jedi-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" [ Non-Vundle related configurations ]
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set's the default vim settings
source $VIMRUNTIME/defaults.vim

" Overwrites specified default setting
set tabstop=4     " Tells vim how many columns a tab counts for
set shiftwidth=4  " 'Levels of indentation', where a level of indentation is
                  " shift width columns of whitespace
set expandtab     " Ensure that when you hit tab, it will actually use spaces
set mouse-=a      " Exchanges the ability to move the cursor with your mouse,
                  " with the ability to highlight and copy text

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" [ Vundle plugin configurations ]
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin: rainbow
let g:rainbow_active = 1
" Plugin: lightline
set laststatus=2
set noshowmode
" Plugin: gruvbox
colorscheme gruvbox
set bg=dark
```

### Without Vundle Plugins

Suppose you rather not use all the configurations provided by Vundle. In that case, you can just place the below configurations into your`.vimrc`, located at your home directory. These configurations simply change some of the default vim settings while leaving the rest as is.

```vim
" Set's the default vim settings
source $VIMRUNTIME/defaults.vim

" Overwrites specified default setting
set tabstop=4     " Tells vim how many columns a tab counts for
set shiftwidth=4  " 'Levels of indentation', where a level of indentation is
                  " shift width columns of whitespace
set expandtab     " Ensure that when you hit tab, it will actually use spaces
set mouse-=a      " Exchanges the ability to move the cursor with your mouse,
                  " with the ability to highlight and copy text
```

## Terminal Profile

=== "macOS"
    My custom terminal profile is a modified version of the Basic Terminal profile in macOS Catalina. To add it to your list of profiles and make it your default, follow the instructions below:

    1. Open the Terminal application.
    2. Click on Preferences... > Profiles > *the gear button at the bottom left of the window* > Import... > *locate and click on 'Basic (Modified).terminal' tab*
    3. Click on the new terminal profile, then press the "Default" button located at the window's bottom.

=== "Linux"
    N/A
