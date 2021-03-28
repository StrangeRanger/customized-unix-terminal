# Customized Unix Terminal

![Updated](https://img.shields.io/static/v1?label=updated&message=February%2019%2C%202021&color=blue&style=flat-square)
[![Documentation Tool](https://img.shields.io/static/v1?label=created%20with&message=material%20for%20mkdocs&color=blue)](https://github.com/squidfunk/mkdocs-material)

This repository contains configurations that I use to modify my terminal's style and behavior, both on my Mac and Linux devices. I've additionally listed all of the command line based programs that I find useful or good to have at a second's notice.

| Table of Contents                               |
| ----------------------------------------------- |
| [Useful Programs](#useful-programs)             |
| [Customizing ZSH Shell](#customizing-zsh-shell) |
| [Vim Resource File](#vim-resource-file)         |
| [Terminal Profile](#terminal-profile)           |

## Useful Programs

<!--WORK ON THIS SOME MORE-->

Below is a list of terminal based programs that I either have installed on my system or find very useful to have at a second's notice. The programs are broken up into two categories: Non-Native Package Managers (NNPM) and Native Package Manager (NPM).

NNPM contains programs that can be installed via Homebrew, Pip, Cargo, Npm, Gem, and/or Git. For each program, I provide a list of package managers that can be used to install the program, listed in the 'Available Package Managers' section of the table. In most cases, the Git method can always be used, although I will only ever provide it as an option if it's the only option, or the documentation or I recommend recommend it over the use of a package manager.

NPM contains programs installable by the operating systems built in package manager, such as apt and yum. Note that all programs listed here are only confirmed to be installable via apt, and no other package manager. With that said, it's hightly unlikely that the programs are exclusive to apt unless specified otherwise.

=== "Homebrew, Pip, Cargo, Npm, Gem, Git"

    | Programs                                                                             | Description                                                                                             | Applicable OS's | Available Package Managers                                                                                                                                                                                                                                                           | Other Info                                                                                                                                                                                     |
    | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
    | [.tmux](https://github.com/gpakosz/.tmux)                                            | Oh my tmux! My self-contained, pretty & versatile tmux configuration made with                          | macOS<br>Linux  | [![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/gpakosz/.tmux)                                                                                                                                                                                | Not a command (though tmux must be installed).                                                                                                                                                 |
    | [bandwhich](https://github.com/imsnif/bandwhich)                                     | Terminal bandwidth utilization tool                                                                     | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/bandwhich?color=f9d194)](https://formulae.brew.sh/formula/bandwhich)<br>[![Crates.io](https://img.shields.io/crates/v/bandwhich?color=dea584)](https://crates.io/crates/bandwhich)                                            |                                                                                                                                                                                                |
    | [bat](https://github.com/sharkdp/bat)                                                | Clone of cat(1) with syntax highlighting and Git integration                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/bat?color=f9d194)](https://formulae.brew.sh/formula/bat)<br>[![Crates.io](https://img.shields.io/crates/v/bat?color=dea584)](https://crates.io/crates/bat)                                                                    |                                                                                                                                                                                                |
    | [black](https://github.com/psf/black)                                                | The uncompromising Python code formatter                                                                | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/black?color=f9d194)](https://formulae.brew.sh/formula/black)<br>[![PyPI](https://img.shields.io/pypi/v/black?color=3572A5)](https://pypi.org/project/black/)                                                                  |                                                                                                                                                                                                |
    | [blackbox](https://github.com/StackExchange/blackbox)                                | Safely store secrets in Git/Mercurial/Subversion                                                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/blackbox?color=f9d194)](https://formulae.brew.sh/formula/blackbox)                                                                                                                                                            | Commands are prefixed with `blackbox_`.                                                                                                                                                        |
    | [bottom](https://github.com/ClementTsang/bottom)                                     | Yet another cross-platform graphical process/system monitor                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/badge/homebrew-Tap-f9d194)](https://github.com/ClementTsang/bottom#homebrew)<br>[![Crates.io](https://img.shields.io/crates/v/bottom?color=dea584)](https://crates.io/crates/bottom)                                                     | Command: `btm`                                                                                                                                                                                 |                                                                                                                                                                                           |
    | [cloc](https://github.com/AlDanial/cloc)                                             | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/cloc?color=f9d194)](https://formulae.brew.sh/formula/cloc)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [dos2unix](https://waterlan.home.xs4all.nl/dos2unix.html)                            | Convert text between DOS, UNIX, and Mac formats                                                         | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/dos2unix?color=f9d194)](https://formulae.brew.sh/formula/dos2unix)                                                                                                                                                            |                                                                                                                                                                                                |
    | [duti](https://github.com/moretension/duti)                                          | Set default document and URL handlers                                                                   | macOS           | [![homebrew version](https://img.shields.io/homebrew/v/duti?color=f9d194)](https://formulae.brew.sh/formula/duti)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [fd](https://github.com/sharkdp/fd)                                                  | A simple, fast and user-friendly alternative to find                                                    | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/fd?color=f9d194)](https://formulae.brew.sh/formula/fd)<br>[![Crates.io](https://img.shields.io/crates/v/fd-find?color=dea584)](https://crates.io/crates/fd-find)                                                              |                                                                                                                                                                                                |
    | [gitleaks](https://github.com/zricethezav/gitleaks)                                  | Audit git repos for secrets                                                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/gitleaks?color=f9d194)](https://formulae.brew.sh/formula/gitleaks)                                                                                                                                                            |                                                                                                                                                                                                |
    | [gitsome](https://github.com/donnemartin/gitsome)                                    | A Supercharged Git/Shell Autocompleter with GitHub Integration                                          | macOS<br>Linux  | [![PyPI](https://img.shields.io/pypi/v/gitsome?color=3572A5)](https://pypi.org/project/gitsome/)                                                                                                                                                                                     |                                                                                                                                                                                                |
    | [git-extras](https://github.com/tj/git-extras)                                       | GIT utilities                                                                                           | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/git-extras?color=f9d194)](https://formulae.brew.sh/formula/git-extras)                                                                                                                                                        | Use `git-extras` to display all available commands.                                                                                                                                            |
    | [grex](https://github.com/pemistahl/grex)                                            | grex generates regular expressions from user-provided test cases                                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/grex?color=f9d194)](https://formulae.brew.sh/formula/grex)<br>[![Crates.io](https://img.shields.io/crates/v/grex?color=dea584)](https://crates.io/crates/grex)                                                                |                                                                                                                                                                                                |
    | [hub](https://github.com/github/hub)                                                 | A command-line tool that makes git easier to use with GitHub                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/hub?color=f9d194)](https://formulae.brew.sh/formula/hub)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [Homebrew Command Not Found](https://github.com/Homebrew/homebrew-command-not-found) | Ubuntu’s command-not-found equivalent for Homebrew on macOS                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/cloc?color=f9d194)](https://formulae.brew.sh/formula/cloc)                                                                                                                                                                    | Not a command.<br>[Install instructions](https://github.com/Homebrew/homebrew-command-not-found#install).                                                                                      |
    | [hstr](https://github.com/dvorka/hstr)                                               | Easily view, navigate, sort and use your command history with shell history suggest box                 | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/hstr?color=f9d194)](https://formulae.brew.sh/formula/hstr)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [htop](https://github.com/htop-dev/htop)                                             | Improved top (interactive process viewer)                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/htop?color=f9d194)](https://formulae.brew.sh/formula/htop)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [httpie](https://github.com/httpie/httpie)                                           | User-friendly cURL replacement (command-line HTTP client)                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/httpie?color=f9d194)](https://formulae.brew.sh/formula/httpie)<br>[![PyPI](https://img.shields.io/pypi/v/httpie?color=3572A5)](https://pypi.org/project/httpie/)                                                              | Command: `http`.                                                                                                                                                                               |
    | [jq](https://github.com/stedolan/jq)                                                 | Command-line JSON processor                                                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/jq?color=f9d194)](https://formulae.brew.sh/formula/jq)                                                                                                                                                                        |                                                                                                                                                                                                |
    | [lynis](https://github.com/CISOfy/lynis)                                             | Security and system auditing tool to harden systems                                                     | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/lynis?color=f9d194)](https://formulae.brew.sh/formula/lynis)                                                                                                                                                                  | Recommended install method: [Git](https://github.com/CISOfy/Lynis).                                                                                                                            |
    | [nmap](https://github.com/nmap/nmap)                                                 | Network exploration tool and security / port scanner                                                    | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/nmap?color=f9d194)](https://formulae.brew.sh/formula/nmap)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [ncdu](https://dev.yorhel.nl/ncdu)                                                   | NCurses Disk Usage                                                                                      | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/ncdu?color=f9d194)](https://formulae.brew.sh/formula/ncdu)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [prettier](https://github.com/prettier/prettier)                                     | Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/prettier?color=f9d194)](https://formulae.brew.sh/formula/prettier)<br>[![npm](https://img.shields.io/npm/v/prettier?color=f1e05a)](https://www.npmjs.com/package/prettier)                                                    | Recommended install method: [Npm](https://www.npmjs.com/package/prettier).                                                                                                                     |
    | [pstree](http://www.thp.uni-duisburg.de/pstree/)                                     | List processes as a tree                                                                                | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pstree?color=f9d194)](https://formulae.brew.sh/formula/pstree)                                                                                                                                                                |                                                                                                                                                                                                |
    | [pipenv](https://github.com/pypa/pipenv)                                             | Python dependency management tool                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pipenv?color=f9d194)](https://formulae.brew.sh/formula/pipenv)<br>[![PyPI](https://img.shields.io/pypi/v/pipenv?color=3572A5)](https://pypi.org/project/pipenv/)                                                              |                                                                                                                                                                                                |
    | [shellcheck](https://github.com/koalaman/shellcheck)                                 | Shell script analysis tool                                                                              | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/shellcheck?color=f9d194)](https://formulae.brew.sh/formula/shellcheck)                                                                                                                                                        |                                                                                                                                                                                                |
    | [symboliclinker](https://github.com/nickzman/symboliclinker)                         | A contextual menu plugin & service for Mac OS X that allows users to make symbolic links in the Finder  | macOS           | [![homebrew version](https://img.shields.io/homebrew/cask/v/symboliclinker?color=f9d194)](https://formulae.brew.sh/cask/symboliclinker)                                                                                                                                              | Not a command.                                                                                                                                                                                 |
    | [terminal-notifier](https://github.com/julienXX/terminal-notifier)                   | Send macOS User Notifications from the command-line                                                     | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/terminal-notifier?color=f9d194)](https://formulae.brew.sh/formula/terminal-notifier)<br>[![Gem](https://img.shields.io/gem/v/terminal-notifier?color=701516)](https://rubygems.org/gems/terminal-notifier)                    | Not a command.<br>Also see the [bgnotify](#oh-my-zsh-plugins) plugin.                                                                                                                          |
    | [thefuck](https://github.com/nvbn/thefuck)                                           | Programmatically correct mistyped console commands                                                      | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/thefuck?color=f9d194)](https://formulae.brew.sh/formula/thefuck)<br>[![PyPI](https://img.shields.io/pypi/v/thefuck?color=3572A5)](https://pypi.org/project/thefuck/)                                                          | [Extra install instructions](https://github.com/nvbn/thefuck#manual-installation).                                                                                                             |
    | [tldr](https://github.com/tldr-pages/tldr)                                           | Simplified and community-driven man pages                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tldr?color=f9d194)](https://formulae.brew.sh/formula/tldr)<br>[![npm](https://img.shields.io/npm/v/tldr?color=f1e05a)](https://www.npmjs.com/package/tldr)                                                                    |                                                                                                                                                                                                |
    | [tmux](https://github.com/tmux/tmux)                                                 | Terminal multiplexer                                                                                    | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tmux?color=f9d194)](https://formulae.brew.sh/formula/tmux)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [trash](https://github.com/ali-rantakari/trash)                                      | Move files/folders to the trash                                                                         | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/trash?color=f9d194)](https://formulae.brew.sh/formula/trash)                                                                                                                                                                  |                                                                                                                                                                                                |
    | [tree](http://mama.indstate.edu/users/ice/tree/)                                     | Display directories as trees (with optional color/HTML output)                                          | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tree?color=f9d194)](https://formulae.brew.sh/formula/tree)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [vim](https://github.com/vim/vim)                                                    | Vi 'workalike' with many additional features                                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/vim?color=f9d194)](https://formulae.brew.sh/formula/vim)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [wget](https://www.gnu.org/software/wget/)                                           | Internet file retriever                                                                                 | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/wget?color=f9d194)](https://formulae.brew.sh/formula/wget)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [wtfutil](https://github.com/wtfutil/wtf)                                            | Personal information dashboard for your terminal                                                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/wtfutil?color=f9d194)](https://formulae.brew.sh/formula/wtfutil)                                                                                                                                                              |                                                                                                                                                                                                |
    | [zip](http://infozip.sourceforge.net/Zip.html)                                       | Compression and file packaging/archive utility                                                          | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zip?color=f9d194)](https://formulae.brew.sh/formula/zip)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [zsh](https://www.zsh.org/)                                                          | UNIX shell (command interpreter)                                                                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh?color=f9d194)](https://formulae.brew.sh/formula/zsh)                                                                                                                                                                      | Not a command.                                                                                                                                                                                 |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)              | Fish-like autosuggestions for zsh                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh-autosuggestions?color=f9d194)](https://formulae.brew.sh/formula/zsh-autosuggestions)<br>[![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/zsh-users/zsh-autosuggestions)             | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).     |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)      | Fish shell like syntax highlighting for Zsh                                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh-syntax-highlighting?color=f9d194)](https://formulae.brew.sh/formula/zsh-syntax-highlighting)<br>[![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/zsh-users/zsh-syntax-highlighting) | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh). |

=== "Native Package Manager"

    Applicable Operating Systems: Linux

    | Programs                                                                        | Description                                                                                             | Number of Repository Families Featuring this Package                                                                                                    | Other Info                                                                                                                                                                                     |
    | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
    | [apt-listchanges](https://tracker.debian.org/pkg/apt-listchanges)               | Package change history notification tool                                                                | [![Packaging status](https://repology.org/badge/tiny-repos/apt-listchanges.svg)](https://repology.org/project/apt-listchanges/versions)                 | Specific the the `apt` package manager.<br>Rarely used as a command.                                                                                                                           |
    | [black](https://github.com/psf/black)                                           | The uncompromising Python code formatter                                                                | [![Packaging status](https://repology.org/badge/tiny-repos/black.svg)](https://repology.org/project/black/versions)                                     | Recommended install method: [Homebrew](https://formulae.brew.sh/formula/black) OR [Pip](https://pypi.org/project/black/).                                                                      |
    | [bat](https://github.com/sharkdp/bat)                                           | Clone of cat(1) with syntax highlighting and Git integration                                            | [![Packaging status](https://repology.org/badge/tiny-repos/bat-cat.svg)](https://repology.org/project/bat-cat/versions)                                 | Command: `batcat` OR `bat`.                                                                                                                                                                    |
    | [cloc](https://github.com/AlDanial/cloc)                                        | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages | [![Packaging status](https://repology.org/badge/tiny-repos/cloc.svg)](https://repology.org/project/cloc/versions)                                       |                                                                                                                                                                                                |
    | [deborphan](https://tracker.debian.org/pkg/deborphan)                           | Program that can find unused packages, e.g. libraries                                                   | [![Packaging status](https://repology.org/badge/tiny-repos/deborphan.svg)](https://repology.org/project/deborphan/versions)                             | Specific the the `apt` package manager.                                                                                                                                                        |
    | [dos2unix](https://waterlan.home.xs4all.nl/dos2unix.html)                       | Convert text between DOS, UNIX, and Mac formats                                                         | [![Packaging status](https://repology.org/badge/tiny-repos/dos2unix.svg)](https://repology.org/project/dos2unix/versions)                               |                                                                                                                                                                                                |
    | [fd-find](https://github.com/sharkdp/fd)                                        | A simple, fast and user-friendly alternative to find                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/fd-find.svg)](https://repology.org/project/fd-find/versions)                                 | Command: `fd`.                                                                                                                                                                                 |
    | [gitsome](https://github.com/donnemartin/gitsome)                               | A Supercharged Git/Shell Autocompleter with GitHub Integration                                          | [![Packaging status](https://repology.org/badge/tiny-repos/gitsome.svg)](https://repology.org/project/gitsome/versions)                                 |                                                                                                                                                                                                |
    | [git-extras](https://github.com/tj/git-extras)                                  | GIT utilities                                                                                           | [![Packaging status](https://repology.org/badge/tiny-repos/git-extras.svg)](https://repology.org/project/git-extras/versions)                           | Use `git-extras` to display all available commands.                                                                                                                                            |
    | [hub](https://github.com/github/hub)                                            | A command-line tool that makes git easier to use with GitHub                                            | [![Packaging status](https://repology.org/badge/tiny-repos/hub.svg)](https://repology.org/project/hub/versions)                                         |                                                                                                                                                                                                |
    | [hstr](https://github.com/dvorka/hstr)                                          | Easily view, navigate, sort and use your command history with shell history suggest box                 | [![Packaging status](https://repology.org/badge/tiny-repos/hstr.svg)](https://repology.org/project/hstr/versions)                                       |                                                                                                                                                                                                |
    | [htop](https://hisham.hm/htop/)                                                 | A cross-platform interactive process viewer                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/htop.svg)](https://repology.org/project/htop/versions)                                       |                                                                                                                                                                                                |
    | [httpie](https://github.com/httpie/httpie)                                      | User-friendly cURL replacement (command-line HTTP client)                                               | [![Packaging status](https://repology.org/badge/tiny-repos/httpie.svg)](https://repology.org/project/httpie/versions)                                   |                                                                                                                                                                                                |
    | [jq](https://github.com/stedolan/jq)                                            | Command-line JSON processor                                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/jq.svg)](https://repology.org/project/jq/versions)                                           |                                                                                                                                                                                                |
    | [lynis](https://github.com/CISOfy/lynis)                                        | Security and system auditing tool to harden systems                                                     | [![Packaging status](https://repology.org/badge/tiny-repos/lynis.svg)](https://repology.org/project/lynis/versions)                                     | Recommended install method: [Git](https://github.com/CISOfy/Lynis).                                                                                                                            |
    | [nmap](https://nmap.org/)                                                       | Network exploration tool and security / port scanner                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/nmap.svg)](https://repology.org/project/nmap/versions)                                       |                                                                                                                                                                                                |
    | [ncdu](http://dev.yorhel.nl/ncdu/)                                              | NCurses Disk Usage                                                                                      | [![Packaging status](https://repology.org/badge/tiny-repos/ncdu.svg)](https://repology.org/project/ncdu/versions)                                       |                                                                                                                                                                                                |
    | [shellcheck](https://www.shellcheck.net/)                                       | Shell script analysis tool                                                                              | [![Packaging status](https://repology.org/badge/tiny-repos/shellcheck.svg)](https://repology.org/project/shellcheck/versions)                           |                                                                                                                                                                                                |
    | [thefuck](https://github.com/nvbn/thefuck)                                      | Programmatically correct mistyped console commands                                                      | [![Packaging status](https://repology.org/badge/tiny-repos/thefuck.svg)](https://repology.org/project/thefuck/versions)                                 | [Extra install instructions](https://github.com/nvbn/thefuck#manual-installation).                                                                                                             |
    | [tldr](https://github.com/tldr-pages/tldr)                                      | Simplified and community-driven man pages                                                               | [![Packaging status](https://repology.org/badge/tiny-repos/tldr.svg)](https://repology.org/project/tldr/versions)                                       |                                                                                                                                                                                                |
    | [tmux](https://tmux.github.io/)                                                 | Terminal multiplexer                                                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/tmux.svg)](https://repology.org/project/tmux/versions)                                       |                                                                                                                                                                                                |
    | [trash-cli](https://github.com/andreafrancia/trash-cli)                         | Move files/folders to the trash                                                                         | [![Packaging status](https://repology.org/badge/tiny-repos/trash-cli.svg)](https://repology.org/project/trash-cli/versions)                             | Command: `trash`.                                                                                                                                                                              |
    | [tree](http://mama.indstate.edu/users/ice/tree/)                                | Display directories as trees (with optional color/HTML output)                                          | N/A                                                                                                                                                     |                                                                                                                                                                                                |
    | [vim](https://www.vim.org/)                                                     | Vi 'workalike' with many additional features                                                            | [![Packaging status](https://repology.org/badge/tiny-repos/vim.svg)](https://repology.org/project/vim/versions)                                         |                                                                                                                                                                                                |
    | [wget](https://www.gnu.org/software/wget/)                                      | Internet file retriever                                                                                 | [![Packaging status](https://repology.org/badge/tiny-repos/wget.svg)](https://repology.org/project/wget/versions)                                       |                                                                                                                                                                                                |
    | [zip](http://www.info-zip.org/Zip.html)                                         | Compression and file packaging/archive utility                                                          | [![Packaging status](https://repology.org/badge/tiny-repos/zip.svg)](https://repology.org/project/zip/versions)                                         |                                                                                                                                                                                                |
    | [zsh](https://www.zsh.org/)                                                     | UNIX shell (command interpreter)                                                                        | [![Packaging status](https://repology.org/badge/tiny-repos/zsh.svg)](https://repology.org/project/zsh/versions)                                         | Not a command.                                                                                                                                                                                 |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)         | Fish-like autosuggestions for zsh                                                                       | [![Packaging status](https://repology.org/badge/tiny-repos/zsh-autosuggestions.svg)](https://repology.org/project/zsh-autosuggestions/versions)         | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).     |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Fish shell like syntax highlighting for Zsh                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/zsh-syntax-highlighting.svg)](https://repology.org/project/zsh-syntax-highlighting/versions) | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh). |

## Customizing ZSH Shell

### Framework

The framework that I use and find to be the best is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009. So it's had many years to evolve and perfect itself.

[Below](#oh-my-zsh-plugins), I also have a list of Oh-my-zsh plugins that I personally use.

### Shell Theme

The theme that I use in combination with oh-my-zsh is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable and very appealing to the eyes.

### ZSH Resource File

??? Info "My .zshrc"

    Below, I have provided my zsh resource file in its entirety. You can use it however you wish, but my intent is to let you use it as a reference for how I organize my own `.zshrc`, as well as provide the other configurations that I don't explicitly mention anywhere else in this document. Note that there is information that I've ommited for security and privacy sake. Omitted information has been replaced with `---`.

    === "macOS"

        ```bash
        export GPG_TTY=$(tty)

        # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
        # Initialization code that may require console input (password prompts, [y/n]
        # confirmations, etc.) must go above this block; everything else may go below.
        if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
            source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
        fi

        # Homebrew Command Not Found (https://github.com/Homebrew/homebrew-command-not-found)
        HB_CNF_HANDLER="$(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
        if [ -f "$HB_CNF_HANDLER" ]; then
            source "$HB_CNF_HANDLER";
        fi

        # If you come from bash you might have to change your $PATH.
        # export PATH=$HOME/bin:/usr/local/bin:$PATH

        # Path to your oh-my-zsh installation.
        export ZSH="/Users/hunter/.oh-my-zsh"

        # Set name of the theme to load --- if set to "random", it will
        # load a random theme each time oh-my-zsh is loaded, in which case,
        # to know which specific one was loaded, run: echo $RANDOM_THEME
        # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
        ZSH_THEME="powerlevel10k/powerlevel10k"

        # Set list of themes to pick from when loading at random
        # Setting this variable when ZSH_THEME=random will cause zsh to load
        # a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
        # If set to an empty array, this variable will have no effect.
        # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

        # Uncomment the following line to use case-sensitive completion.
        # CASE_SENSITIVE="true"

        # Uncomment the following line to use hyphen-insensitive completion.
        # Case-sensitive completion must be off. _ and - will be interchangeable.
        # HYPHEN_INSENSITIVE="true"

        # Uncomment the following line to disable bi-weekly auto-update checks.
        # DISABLE_AUTO_UPDATE="true"

        # Uncomment the following line to automatically update without prompting.
        # DISABLE_UPDATE_PROMPT="true"

        # Uncomment the following line to change how often to auto-update (in days).
        # export UPDATE_ZSH_DAYS=13

        # Uncomment the following line if pasting URLs and other text is messed up.
        # DISABLE_MAGIC_FUNCTIONS=true

        # Uncomment the following line to disable colors in ls.
        # DISABLE_LS_COLORS="true"

        # Uncomment the following line to disable auto-setting terminal title.
        # DISABLE_AUTO_TITLE="true"

        # Uncomment the following line to enable command auto-correction.
        # ENABLE_CORRECTION="true"

        # Uncomment the following line to display red dots whilst waiting for completion.
        # COMPLETION_WAITING_DOTS="true"

        # Uncomment the following line if you want to disable marking untracked files
        # under VCS as dirty. This makes repository status check for large repositories
        # much, much faster.
        # DISABLE_UNTRACKED_FILES_DIRTY="true"

        # Uncomment the following line if you want to change the command execution time
        # stamp shown in the history command output.
        # You can set one of the optional three formats:
        # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
        # or set a custom format using the strftime function format specifications,
        # see 'man strftime' for details.
        # HIST_STAMPS="mm/dd/yyyy"

        # Would you like to use another custom folder than $ZSH/custom?
        # ZSH_CUSTOM=/path/to/new-custom-folder

        # Which plugins would you like to load?
        # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
        # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
        # Example format: plugins=(rails git textmate ruby lighthouse)
        # Add wisely, as too many plugins slow down shell startup.
        plugins=(git colored-man-pages copybuffer copydir copyfile history nmap osx bgnotify urltools)

        source $ZSH/oh-my-zsh.sh
        # User configuration

        # export MANPATH="/usr/local/man:$MANPATH"

        # You may need to manually set your language environment
        # export LANG=en_US.UTF-8

        # Preferred editor for local and remote sessions
        # if [[ -n $SSH_CONNECTION ]]; then
        #   export EDITOR='vim'
        # else
        #   export EDITOR='mvim'
        # fi

        # Compilation flags
        # export ARCHFLAGS="-arch x86_64"

        # Set personal aliases, overriding those provided by oh-my-zsh libs,
        # plugins, and themes. Aliases can be placed here, though oh-my-zsh
        # users are encouraged to define aliases within the ZSH_CUSTOM folder.
        # For a full list of active aliases, run `alias`.
        #
        # Example aliases
        # alias zshconfig="mate ~/.zshrc"
        # alias ohmyzsh="mate ~/.oh-my-zsh"
        #


        ########################################################################################
        #### [ Secrete Aliases]


        alias gitkeyd="cd ~/.gitkey && sudo gpg -d .gitkey.gpg && cd - > /dev/null"


        #### End of [ Secrete Aliases]
        ########################################################################################
        #### [ General Aliases ]

        ####################################################################################
        ########[ Group 1 ]


        alias edisk="cd /Volumes && ll"
        alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
        alias batterylife="pmset -g batt"
        alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
        # Restart coreaudio on macOS
        alias rscoreaudio="sudo kill -9 \"$(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')\""


        ######## End of [ Group 1 ]
        ####################################################################################
        ######## [ Group 2 ]
        ######## Due to the sheer number of commands, it's impossible to remember them all. So
        ######## the aliases below are supposed to make it easier to remember by allowing you to
        ######## print out a list of useful commands.


        alias listtools="echo -e \
            \"\n################################################################################\" \
            \"\n#### [ Package Manager installed commands ]\" \
            \"\n\" \
            \"\nblack         - The uncompromising Python code formatter\" \
            \"\nblackbox_*    - Safely store secrets in Git/Mercurial/Subversion\" \
            \"\nbat           - Clone of cat(1) with syntax highlighting and Git integration\" \
            \"\ncloc          - Counts blank lines, comment lines, and physical lines of source\" \
            \"\n                code in many programming languages\" \
            \"\ndos2unix      - Convert text between DOS, UNIX, and Mac formats\" \
            \"\nduti          - Set default document and URL handlers\" \
            \"\nfd            - A simple, fast and user-friendly alternative to find\" \
            \"\ngitleaks      - Audit git repos for secrets\" \
            \"\ngit-extras    - Opens GIT utilities man page\" \
            \"\ngpg           - GNU Pretty Good Privacy (PGP) package\" \
            \"\nhub           - A command-line tool that makes git easier to use with GitHub\" \
            \"\nhstr          - Easily view, navigate, sort and use your command history with\" \
            \"\n                shell history suggest box\" \
            \"\nhtop          - Improved top (interactive process viewer)\" \
            \"\nhttp          - User-friendly cURL replacement (command-line HTTP client)\" \
            \"\njq            - Command-line JSON processor\" \
            \"\nmkdocs        - Project documentation with Markdown\" \
            \"\nnmap          - Network exploration tool and security / port scanner\" \
            \"\nncdu          - NCurses Disk Usage\" \
            \"\npstree        - List processes as a tree\" \
            \"\npyenv         - Python version management\" \
            \"\nshellcheck    - Shell script analysis tool\" \
            \"\nspeedtest-cli - Command line interface for testing internet bandwidth using\" \
            \"\n                speedtest.net\" \
            \"\nfuck          - Programatically correct mistyped console commands\" \
            \"\ntldr          - Simplified and community-driven man pages\" \
            \"\ntmux          - Terminal multiplexer\" \
            \"\ntrash         - Move files/folders to the trash\" \
            \"\ntree          - Display directories as trees (with optional color/HTML output)\" \
            \"\nvim           - Vi 'workalike' with many additional features\" \
            \"\nwget          - Internet file retriever\" \
            \"\nwtfutil       - Personal information dashboard for your terminal\" \
            \"\nzip           - Compression and file packaging/archive utility\" \
            \"\n\" \
            \"\n\" \
            \"\n################################################################################\" \
            \"\n####[ Oh-my-zsh plugin commands ]\" \
            \"\n\" \
            \"\ncopydir   - Copies the path of your current folder to the system clipboard\" \
            \"\ncopyfile  - Puts the contents of a file in your system clipboard so you can\" \
            \"\n            paste it anywhere\" \
            \"\nh         - Prints your command histor\" \
            \"\nhs        - Use grep to search your command history\" \
            \"\nhsi       - Use grep to do a case-insensitive search of your command history\" \
            \"\nurlencode - URL-encodes the given string\" \
            \"\nurldecode - URL-decodes the given string\" \
            \"\n\" \
            \"\n\" \
            \"\n############################################################################\" \
            \"\n######## [ Keyboard combinations ]\" \
            \"\n\" \
            \"\nCtrl + O - Allows you to copy what you are currently typing, via Ctrl + O\" \
            \"\n\" \
            \"\n\" \
            \"\n############################################################################\" \
            \"\n########[ Command aliases ]\" \
            \"\n\" \
            \"\nlisttools_nmap - Lists nmap aliases\" \
            \"\nlisttools_osx  - Lists osx aliases\" \
            \"\n\""
        alias listtools_nmap="echo -e \
            \"\n################################################################################\" \
            \"\n#### [ Nmap aliases ]\" \
            \"\n\" \
            \"\nnmap_open_ports            - Scan for open ports on target\" \
            \"\nnmap_list_interfaces       - List all network interfaces on host where the\" \
            \"\n                             command runs\" \
            \"\nnmap_slow                  - Slow scan that avoids to spam the targets logs\" \
            \"\nnmap_fin                   - Scan to see if hosts are up with TCP FIN scan\" \
            \"\nnmap_full                  - Aggressive full scan that scans all ports, tries\" \
            \"\n                             to determine OS and service versions\" \
            \"\nnmap_check_for_firewall    - TCP ACK scan to check for firewall existence\" \
            \"\nnmap_ping_through_firewall - Host discovery with SYN and ACK probes instead\" \
            \"\n                             of just pings to avoid firewall restrictions\" \
            \"\nnmap_fast                  - Fast scan of the top 300 popular ports\" \
            \"\nnmap_detect_versions       - Detects versions of services and OS, runs on all ports\" \
            \"\nnmap_check_for_vulns       - Uses vulscan script to check target services for\" \
            \"\n                             vulnerabilities\" \
            \"\nnmap_full_udp              - Same as full but via UDP\" \
            \"\nnmap_traceroute            - Try to traceroute using the most common ports\" \
            \"\nnmap_full_with_scripts     - Same as nmap_full but also runs all the scripts\" \
            \"\nnmap_web_safe_osscan       - Little \"safer\" scan for OS version as connecting\" \
            \"\n                             to only HTTP and HTTPS ports doesn't look so attacking\" \
            \"\nnmap_ping_scan             - ICMP scan for active hosts\" \
            \"\n\""
        alias listtools_osx="echo -e \
            \"\n################################################################################\" \
            \"\n#### [ OSX commands ]\" \
            \"\n\" \
            \"\ntab         - Open the current directory in a new tab\" \
            \"\nsplit_tab   - Split the current terminal tab horizontally\" \
            \"\nvsplit_tab  - Split the current terminal tab vertically\" \
            \"\nofd         - Open the current directory in a Finder window\" \
            \"\npfd         - Return the path of the frontmost Finder window\" \
            \"\npfs         - Return the current Finder selection\" \
            \"\ncdf         - cd to the current Finder directory\" \
            \"\npushdf      - pushd to the current Finder directory\" \
            \"\npxd         - Return the current Xcode project directory\" \
            \"\ncdx         - cd to the current Xcode project directory\" \
            \"\nquick-look  - Quick-Look a specified file\" \
            \"\nman-preview - Open a specified man page in Preview app\" \
            \"\nshowfiles   - Show hidden files in Finder\" \
            \"\nhidefiles   - Hide the hidden files in Finder\" \
            \"\nmusic       - Control Apple Music. Use music -h for usage details\" \
            \"\nspotify     - Control Spotify and search by artist, album, track…\" \
            \"\nrmdsstore   - Remove .DS_Store files recursively in a directory\" \
            \"\nbtrestart   - Restart the Bluetooth daemon\" \
            \"\n\""


        ######## End of [ Group  2]
        ####################################################################################

        #### End of [ General Aliases ]
        ########################################################################################
        #### [ SSH and SFTP Server Aliases ]


        # Main server ssh & sftp commands
        alias ssh1="ssh -p --- -i ~/.ssh/--- ---@---"
        alias sftp1="sftp -oPort=--- -i ~/.ssh/--- ---@---"
        # Bot server ssh commands
        alias ssh2="ssh -p --- -i ~/.ssh/--- ---@---"
        alias ssh3="ssh -p --- -i ~/.ssh/--- ---@---"
        alias ansibleupdate="ssh-add ~/.ssh/--- ~/.ssh/--- && ansible-playbook --ask-become-pass -i inventory playbook.yml"


        #### End of [ SSH and SFTP Server Aliases ]
        ########################################################################################
        #### [ Environmental variables ]


        # If PowerLevel10K's Instant Prompt is enabled, `export GPG_TTY=$(tty)` needs to be
        # placed at the top of this file. Find more information here:
        # https://unix.stackexchange.com/questions/608842/zshrc-export-gpg-tty-tty-says-not-a-tty/608921#608921
        #export GPG_TTY=$(tty)

        # Unbound packages are installed here.
        # Find information about the package here: https://formulae.brew.sh/formula/unbound
        export PATH="/usr/local/sbin:$PATH"
        # Modifies colors of files when using `ls`.
        # For info on the specific LSCOLOR variable below, visit:
        # https://customized-unix-terminal.randomserver.xyz/#modifying-lscolors
        export LSCOLORS="exgxfxDxcxegDhabagacaD"


        #### End of [ Environmental variables ]
        ########################################################################################
        #### [ Sourced Files ]


        # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

        # Zsh "plugin" installed via Homebrew: `brew install zsh-autosuggestions`
        # Alternative install methods:
        # https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
        source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        # Zsh "plugin" installed via Homebrew: `brew install zsh-syntax-highlighting`
        # Alternative install methods:
        # https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
        source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        # Fixes slow pasting with when using zsh-syntax-highlighting.
        # Find more information here:
        # https://github.com/zsh-users/zsh-syntax-highlighting/issues/295#issuecomment-214581607
        zstyle ':bracketed-paste-magic' active-widgets '.self-*'


        #### End of [ Sourced Files ]
        ########################################################################################
        #### [ Eval ]


        # Makes alias 'fuck' available. It SHOULD be kept/placed at the bottom of your '.zshrc'.
        eval $(thefuck --alias)


        #### End of [ Eval ]
        ########################################################################################
        ```

    === "Linux"

      HI

#### Oh-my-zsh Plugins

This is a list of all the oh-my-zsh plugins that I use and find to provide useful functionality. Note that all of the commands provided by these plugins are also in the `listtools` alias provided above.

| Plugins                                                                                       | Description                                                       | Other Info                                                                                                     |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) | Adds colors to man pages                                          | Not a command                                                                                                  |
| [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer)               | Allows you to copy what you are currently typing, via Ctrl + O    | Not a command<br>Key Combination: `Ctrl` + `O`                                                                 |
| [copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir)                     | Copies the path of your working directory                         |
| [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile)                   | Copies the contents of a file                                     |
| [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history)                     | History aliases                                                   |
| [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap)                           | Nmap aliases                                                      | `nmap` must already be installed                                                                               |
| [bgnotify](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify)                   | cross-platform background notifications for long running commands | Not a command<br>[Extra install instructions](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify) |
| [urltools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/urltools)                   | provides two aliases to URL-encode and URL-decode strings         |

#### Custom Aliases

Below is a list of "General Purpose Aliases" that I have inside of my `.zshrc`. They are broken up into two groups. "Group 1" contains a number command based aliases. "Group 2" contains aliases that are meant to provide a list of useful commands, that of which can be hard to remember due the sheer number of them. Most, if not all, of the commands presented in the [Useful Programs](#useful-programs) and [Oh-my-zsh Plugins](#oh-my-zsh-plugins) section are in the second group of the aliases, and vise-versa. To use these alaises, you will want to add the code below to the bottom of your `.zshrc` file located in your home directory.

=== "macOS"

    ```bash
    ########################################################################################
    #### [ General Purpose Aliases ]

    ####################################################################################
    ######## [ Group 1 ]


    alias edisk="cd /Volumes && ll"
    alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
    alias batterylife="pmset -g batt"
    alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
    # Restart coreaudio on macOS
    alias rscoreaudio="sudo kill -9 \"$(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')\""


    ######## End of [ Group 1 ]
    ####################################################################################
    ######## [ Group 2 ]
    ######## Due to the sheer number of commands, it's impossible to remember them all. So
    ######## the aliases below are supposed to make it easier to remember by allowing you to
    ######## print out a list of useful commands.


    alias listtools="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Package Manager installed commands ]\" \
        \"\n\" \
        \"\nbandwhich  - Terminal bandwidth utilization tool\" \
        \"\nbat        - Clone of cat(1) with syntax highlighting and Git integration\" \
        \"\nblackbox_* - Safely store secrets in Git/Mercurial/Subversion\" \
        \"\btm         - Yet another cross-platform graphical process/system monitor\" \
        \"\ncloc       - Counts blank lines, comment lines, and physical lines of source\" \
        \"\n             code in many programming languages\" \
        \"\ndos2unix   - Convert text between DOS, UNIX, and Mac formats\" \
        \"\nduti       - Set default document and URL handlers\" \
        \"\nfd         - A simple, fast and user-friendly alternative to find\" \
        \"\ngrex       - Generates regular expressions from user-provided test cases\" \
        \"\nhub        - A command-line tool that makes git easier to use with GitHub\" \
        \"\nhstr       - Easily view, navigate, sort and use your command history with shell\" \
        \"\n             history suggest box\" \
        \"\nhtop       - Improved top (interactive process viewer)\" \
        \"\nhttp       - User-friendly cURL replacement (command-line HTTP client)\" \
        \"\njq         - Command-line JSON processor\" \
        \"\nnmap       - Network exploration tool and security / port scanner\" \
        \"\nncdu       - NCurses Disk Usage\" \
        \"\npstree     - List processes as a tree\" \
        \"\nshellcheck - Shell script analysis tool\" \
        \"\nfuck       - Programatically correct mistyped console commands\" \
        \"\ntldr       - Simplified and community-driven man pages\" \
        \"\ntmux       - Terminal multiplexer\" \
        \"\ntrash      - Move files/folders to the trash\" \
        \"\ntree       - Display directories as trees (with optional color/HTML output)\" \
        \"\nwget       - Internet file retriever\" \
        \"\nwtfutil    - Personal information dashboard for your terminal\" \
        \"\nzip        - Compression and file packaging/archive utility\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n########[ Grouped commands ]\" \
        \"\n\" \
        \"\nlisttools_formatters - Lists code formatters and linters\" \
        \"\nlisttools_git        - List of programs oriented around git\" \
        \"\n\" \
        \"\n\" \
        \"\n################################################################################\" \
        \"\n####[ Oh-my-zsh plugin commands ]\" \
        \"\n\" \
        \"\ncopydir   - Copies the path of your current folder to the system clipboard\" \
        \"\ncopyfile  - Puts the contents of a file in your system clipboard so you can\" \
        \"\n            paste it anywhere\" \
        \"\nh         - Prints your command histor\" \
        \"\nhs        - Use grep to search your command history\" \
        \"\nhsi       - Use grep to do a case-insensitive search of your command history\" \
        \"\nurlencode - URL-encodes the given string\" \
        \"\nurldecode - URL-decodes the given string\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n######## [ Keyboard combinations ]\" \
        \"\n\" \
        \"\nCtrl + O - Allows you to copy what you are currently typing, via Ctrl + O\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n########[ Command aliases ]\" \
        \"\n\" \
        \"\nlisttools_nmap - Lists nmap aliases\" \
        \"\n\""
    alias listtools_formatters="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Code formatters and linters ]\" \
        \"\n\" \
        \"\nblack    - The uncompromising Python code formatter\" \
        \"\nprettier - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML\" \
        \"\n\""
    alias listtools_git="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Git related ]\" \
        \"\n\" \
        \"\ngitleaks   - Audit git repos for secrets\" \
        \"\ngitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration\" \
        \"\ngit-extras - Opens GIT utilities man page\" \
        \"\n\""
    alias listtools_nmap="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Nmap aliases ]\" \
        \"\n\" \
        \"\nnmap_open_ports            - Scan for open ports on target\" \
        \"\nnmap_list_interfaces       - List all network interfaces on host where the\" \
        \"\n                             command runs\" \
        \"\nnmap_slow                  - Slow scan that avoids to spam the targets logs\" \
        \"\nnmap_fin                   - Scan to see if hosts are up with TCP FIN scan\" \
        \"\nnmap_full                  - Aggressive full scan that scans all ports, tries\" \
        \"\n                             to determine OS and service versions\" \
        \"\nnmap_check_for_firewall    - TCP ACK scan to check for firewall existence\" \
        \"\nnmap_ping_through_firewall - Host discovery with SYN and ACK probes instead\" \
        \"\n                             of just pings to avoid firewall restrictions\" \
        \"\nnmap_fast                  - Fast scan of the top 300 popular ports\" \
        \"\nnmap_detect_versions       - Detects versions of services and OS, runs on all ports\" \
        \"\nnmap_check_for_vulns       - Uses vulscan script to check target services for\" \
        \"\n                             vulnerabilities\" \
        \"\nnmap_full_udp              - Same as full but via UDP\" \
        \"\nnmap_traceroute            - Try to traceroute using the most common ports\" \
        \"\nnmap_full_with_scripts     - Same as nmap_full but also runs all the scripts\" \
        \"\nnmap_web_safe_osscan       - Little \"safer\" scan for OS version as connecting\" \
        \"\n                             to only HTTP and HTTPS ports doesn't look so attacking\" \
        \"\nnmap_ping_scan             - ICMP scan for active hosts\" \
        \"\n\""


    ######## End of [ Group  2]
    ####################################################################################

    #### End of [ General Purpose Aliases ]
    ########################################################################################
    ```

=== "Linux"

    ```bash
    ########################################################################################
    #### [ General Purpose Aliases ]

    ####################################################################################
    ######## [ Group 1 ]


    alias updateall="sudo apt update && sudo apt upgrade -y"
    alias trm="trash"


    ######## End of [ Group 1 ]
    ####################################################################################
    ######## [ Group 2 ]
    ######## Due to the sheer number of commands, it's impossible to remember them all. So
    ######## the aliases below are supposed to make it easier to remember by allowing you to
    ######## print out a list of useful commands.


    alias listtools="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Package Manager installed commands ]\" \
        \"\n\" \
        \"\nbandwhich  - Terminal bandwidth utilization tool\" \
        \"\nbat        - Clone of cat(1) with syntax highlighting and Git integration\" \
        \"\nblackbox_* - Safely store secrets in Git/Mercurial/Subversion\" \
        \"\btm         - Yet another cross-platform graphical process/system monitor\" \
        \"\ncloc       - Counts blank lines, comment lines, and physical lines of source\" \
        \"\n             code in many programming languages\" \
        \"\ndeborphan  - Program that can find unused packages, e.g. libraries\" \
        \"\ndos2unix   - Convert text between DOS, UNIX, and Mac formats\" \
        \"\nfd         - A simple, fast and user-friendly alternative to find\" \
        \"\ngrex       - Generates regular expressions from user-provided test cases\" \
        \"\nhub        - A command-line tool that makes git easier to use with GitHub\" \
        \"\nhstr       - Easily view, navigate, sort and use your command history with shell\" \
        \"\n             history suggest box\" \
        \"\nhtop       - Improved top (interactive process viewer)\" \
        \"\nhttp       - User-friendly cURL replacement (command-line HTTP client)\" \
        \"\njq         - Command-line JSON processor\" \
        \"\nnmap       - Network exploration tool and security / port scanner\" \
        \"\nncdu       - NCurses Disk Usage\" \
        \"\npstree     - List processes as a tree\" \
        \"\nshellcheck - Shell script analysis tool\" \
        \"\nfuck       - Programatically correct mistyped console commands\" \
        \"\ntldr       - Simplified and community-driven man pages\" \
        \"\ntmux       - Terminal multiplexer\" \
        \"\ntrash      - Move files/folders to the trash\" \
        \"\ntree       - Display directories as trees (with optional color/HTML output)\" \
        \"\nwget       - Internet file retriever\" \
        \"\nwtfutil    - Personal information dashboard for your terminal\" \
        \"\nzip        - Compression and file packaging/archive utility\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n########[ Grouped commands ]\" \
        \"\n\" \
        \"\nlisttools_formatters - Lists code formatters and linters\" \
        \"\nlisttools_git        - List of programs oriented around git\" \
        \"\n\" \
        \"\n\" \
        \"\n################################################################################\" \
        \"\n####[ Oh-my-zsh plugin commands ]\" \
        \"\n\" \
        \"\ncopydir   - Copies the path of your current folder to the system clipboard\" \
        \"\ncopyfile  - Puts the contents of a file in your system clipboard so you can\" \
        \"\n            paste it anywhere\" \
        \"\nh         - Prints your command histor\" \
        \"\nhs        - Use grep to search your command history\" \
        \"\nhsi       - Use grep to do a case-insensitive search of your command history\" \
        \"\nurlencode - URL-encodes the given string\" \
        \"\nurldecode - URL-decodes the given string\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n######## [ Keyboard combinations ]\" \
        \"\n\" \
        \"\nCtrl + O - Allows you to copy what you are currently typing, via Ctrl + O\" \
        \"\n\" \
        \"\n\" \
        \"\n############################################################################\" \
        \"\n########[ Command aliases ]\" \
        \"\n\" \
        \"\nlisttools_nmap - Lists nmap aliases\" \
        \"\n\""
    alias listtools_formatters="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Code formatters and linters ]\" \
        \"\n\" \
        \"\nblack    - The uncompromising Python code formatter\" \
        \"\nprettier - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML\" \
        \"\n\""
    alias listtools_git="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Git related ]\" \
        \"\n\" \
        \"\ngitleaks   - Audit git repos for secrets\" \
        \"\ngitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration\" \
        \"\ngit-extras - Opens GIT utilities man page\" \
        \"\n\""
    alias listtools_nmap="echo -e \
        \"\n################################################################################\" \
        \"\n#### [ Nmap aliases ]\" \
        \"\n\" \
        \"\nnmap_open_ports            - Scan for open ports on target\" \
        \"\nnmap_list_interfaces       - List all network interfaces on host where the\" \
        \"\n                             command runs\" \
        \"\nnmap_slow                  - Slow scan that avoids to spam the targets logs\" \
        \"\nnmap_fin                   - Scan to see if hosts are up with TCP FIN scan\" \
        \"\nnmap_full                  - Aggressive full scan that scans all ports, tries\" \
        \"\n                             to determine OS and service versions\" \
        \"\nnmap_check_for_firewall    - TCP ACK scan to check for firewall existence\" \
        \"\nnmap_ping_through_firewall - Host discovery with SYN and ACK probes instead\" \
        \"\n                             of just pings to avoid firewall restrictions\" \
        \"\nnmap_fast                  - Fast scan of the top 300 popular ports\" \
        \"\nnmap_detect_versions       - Detects versions of services and OS, runs on all ports\" \
        \"\nnmap_check_for_vulns       - Uses vulscan script to check target services for\" \
        \"\n                             vulnerabilities\" \
        \"\nnmap_full_udp              - Same as full but via UDP\" \
        \"\nnmap_traceroute            - Try to traceroute using the most common ports\" \
        \"\nnmap_full_with_scripts     - Same as nmap_full but also runs all the scripts\" \
        \"\nnmap_web_safe_osscan       - Little \"safer\" scan for OS version as connecting\" \
        \"\n                             to only HTTP and HTTPS ports doesn't look so attacking\" \
        \"\nnmap_ping_scan             - ICMP scan for active hosts\" \
        \"\n\""


    ######## End of [ Group  2]
    ####################################################################################

    #### End of [ General Purpose Aliases ]
    ########################################################################################
    ```

### Modifying LSCOLORS

LSCOLORS is what determines the color of the files and directories in the terminal. To apply my custom LSCOLORS, you'll first need to open `~/.oh-my-zsh/lib/theme-and-appearance.zsh`. With the file open, find and comment out the line beginning with `export LSCOLORS=`, then place `export LSCOLORS="exgxfxDxcxegDhabagacaD"` on the line below it.

You can optionally modify the terminal profile ANSI-colors to change the shading of the colors, to your liking. If you are using macOS, you can alternatively import my personal terminal profile.

Below is a key to help you understand what the values of the LSCOLORS variable mean:

| Letter Code | Type                                               | Text Color | Foreground/Background Color |
| ----------- | -------------------------------------------------- | ---------- | --------------------------- |
| ex          | Directories                                        | blue       | _default_                   |
| gx          | Symbolic link                                      | cyan       | _default_                   |
| fx          | Socket                                             | magenta    | _default_                   |
| Dx          | Pipe                                               | yellow     | _default_                   |
| cx          | Executable                                         | green      | _default_                   |
| eg          | Block special                                      | green      | cyan                        |
| Dh          | Character special                                  | yellow     | grey                        |
| ab          | Executable with setuid bit set                     | black      | red                         |
| ag          | Executable with setgid bit set                     | black      | cyan                        |
| ac          | Directory writeable to others (with a sticky bit)  | black      | green                       |
| aD          | Directory writeable to others (without sticky bit) | black      | yellow                      |

## Vim Resource File

### With Vundle Plugins

These configurations modify the behavior and look of vim. To make use of all the configurations listed below, you will need to first [install Vundle](https://github.com/VundleVim/Vundle.vim). Once installed, place the code below into your `.vimrc` located at your home directory. Then to install the plugins, open `.vimrc` with vim, then enter `:source %` and `:PluginInstall` (separately). This should trigger Vundle to start installing the plugins specified in the configurations below.

!!! Note

    When using `:source %`, you can ignore any errors that might occur, as this will happen because the plugins aren't installed yet.

```vim
""""[ Vundle configurations ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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


""""[ Non-Vundle related configurations ]"""""""""""""""""""""""""""""""""""""""""""""""


" Set's the default vim settings.
source $VIMRUNTIME/defaults.vim

" Overwrites specified default setting.
set tabstop=4     " Tells vim how many columns a tab counts for.
set shiftwidth=4  " 'Levels of indentation', where a level of indentation is shiftwidth
                  " columns of whitespace.
set expandtab     " Ensure that when you hit tab it will actually use spaces.
set mouse-=a      " Exchanges the ability to move the cursor with your mouse, with the
                  " ability to highlight and copy text.


""""[ Vundle plugin configurations ]""""""""""""""""""""""""""""""""""""""""""""""""""""


" Plugin: rainbow
let g:rainbow_active = 1
" Plugin: lightline
set laststatus=2
set noshowmode
"Plugin: gruvbox
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
