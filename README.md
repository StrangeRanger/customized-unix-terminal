# Customized Unix Terminal

[![Project Tracker](https://img.shields.io/badge/repo%20status-Project%20Tracker-lightgrey)](https://randomserver.xyz/project-tracker.html#customized-unix-terminal)
[![Documentation Tool](https://img.shields.io/static/v1?label=created%20with&message=material%20for%20mkdocs&color=blue)](https://github.com/squidfunk/mkdocs-material)
[![Page Status](https://img.shields.io/uptimerobot/status/m788335124-af78027ad4a42d714c4070a7)](https://customized-unix-terminal.randomserver.xyz/)

This repository contains configurations that I use to modify my terminal's style and behavior, both on my Mac and Linux devices. I've additionally listed all of the command line based programs that I find to be very useful.

| Table of Contents                               |
| ----------------------------------------------- |
| [Useful Programs](#useful-programs)             |
| [Customizing ZSH Shell](#customizing-zsh-shell) |
| [Vim Resource File](#vim-resource-file)         |
| [Terminal Profile](#terminal-profile)           |

## Useful Programs

Below is a list of terminal based programs that I either have installed on my system or find very useful to have at a second's notice. The programs are broken up into two categories: Non-Native Package Managers (NNPM) and Native Package Manager (NPM).

NNPM contains programs that can be installed via Homebrew, Pip, Cargo, Npm, Gem, and/or Git. For each program, I provide a list of package managers that can be used to install the program, listed in the 'Available Package Managers' section of the table. In most cases, the Git method can always be used, although I will only ever provide it as an option if it's the only option, or the documentation or I recommend it over the use of a package manager.

NPM contains programs installable by the operating systems built in package manager, such as apt and yum. Note that all programs listed here are only confirmed to be installable via apt, and no other package manager. With that said, it's highly unlikely that the programs are exclusive to apt unless specified otherwise.

=== "Homebrew, Pip, Cargo, Npm, Gem, Git"

    | Programs                                                                             | Description                                                                                                               | Applicable OS's | Available Package Managers                                                                                                                                                                                                                                                           | Other Info                                                                                                                                                                                     |
    | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
    | [.tmux](https://github.com/gpakosz/.tmux)                                            | Oh my tmux! My self-contained, pretty & versatile tmux configuration made with                                            | macOS<br>Linux  | [![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/gpakosz/.tmux)                                                                                                                                                                                | Not a command (though tmux must be installed).                                                                                                                                                 |
    | [bandwhich](https://github.com/imsnif/bandwhich)                                     | Terminal bandwidth utilization tool                                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/bandwhich?color=f9d194)](https://formulae.brew.sh/formula/bandwhich)<br>[![Crates.io](https://img.shields.io/crates/v/bandwhich?color=dea584)](https://crates.io/crates/bandwhich)                                            |                                                                                                                                                                                                |
    | [bat](https://github.com/sharkdp/bat)                                                | Clone of cat(1) with syntax highlighting and Git integration                                                              | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/bat?color=f9d194)](https://formulae.brew.sh/formula/bat)<br>[![Crates.io](https://img.shields.io/crates/v/bat?color=dea584)](https://crates.io/crates/bat)                                                                    |                                                                                                                                                                                                |
    | [black](https://github.com/psf/black)                                                | The uncompromising Python code formatter                                                                                  | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/black?color=f9d194)](https://formulae.brew.sh/formula/black)<br>[![PyPI](https://img.shields.io/pypi/v/black?color=3572A5)](https://pypi.org/project/black/)                                                                  |                                                                                                                                                                                                |
    | [blackbox](https://github.com/StackExchange/blackbox)                                | Safely store secrets in Git/Mercurial/Subversion                                                                          | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/blackbox?color=f9d194)](https://formulae.brew.sh/formula/blackbox)                                                                                                                                                            | Commands are prefixed with `blackbox_`.                                                                                                                                                        |
    | [bottom](https://github.com/ClementTsang/bottom)                                     | Yet another cross-platform graphical process/system monitor                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/badge/homebrew-Tap-f9d194)](https://github.com/ClementTsang/bottom#homebrew)<br>[![Crates.io](https://img.shields.io/crates/v/bottom?color=dea584)](https://crates.io/crates/bottom)                                                     | Command: `btm`                                                                                                                                                                                 |
    | [cloc](https://github.com/AlDanial/cloc)                                             | Counts blank lines, comment lines, and physical lines of source code in many programming languages                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/cloc?color=f9d194)](https://formulae.brew.sh/formula/cloc)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [codespell](https://github.com/codespell-project/codespell)                          | Check code for common misspellings                                                                                        | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/codespell?color=f9d194)](https://formulae.brew.sh/formula/codespell)<br>[![PyPI](https://img.shields.io/pypi/v/codespell?color=3572A5)](https://pypi.org/project/codespell/)                                                  |                                                                                                                                                                                                |
    | [coreutils](https://github.com/coreutils/coreutils)                                  | These are the GNU core utilities. This package is the union of the GNU `fileutils`, `sh-utils`, and `textutils` packages. | macOS           | [![homebrew version](https://img.shields.io/homebrew/v/coreutils?color=f9d194)](https://formulae.brew.sh/formula/coreutils)                                                                                                                                                          | Not a command.<br>All GNU commands installed via coreutils, are the same as they are on Linux, but prefixed with a `g` (i.e. `gcp` for `cp`).                                                  |
    | [duf](https://github.com/muesli/duf)                                                 | Disk Usage/Free Utility - a better 'df' alternative                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/duf?color=f9d194)](https://formulae.brew.sh/formula/duf)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [duti](https://github.com/moretension/duti)                                          | Set default document and URL handlers                                                                                     | macOS           | [![homebrew version](https://img.shields.io/homebrew/v/duti?color=f9d194)](https://formulae.brew.sh/formula/duti)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [fd](https://github.com/sharkdp/fd)                                                  | A simple, fast and user-friendly alternative to find                                                                      | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/fd?color=f9d194)](https://formulae.brew.sh/formula/fd)<br>[![Crates.io](https://img.shields.io/crates/v/fd-find?color=dea584)](https://crates.io/crates/fd-find)                                                              |                                                                                                                                                                                                |
    | [gitsome](https://github.com/donnemartin/gitsome)                                    | A Supercharged Git/Shell Autocompleter with GitHub Integration                                                            | macOS<br>Linux  | [![PyPI](https://img.shields.io/pypi/v/gitsome?color=3572A5)](https://pypi.org/project/gitsome/)                                                                                                                                                                                     |                                                                                                                                                                                                |
    | [git-extras](https://github.com/tj/git-extras)                                       | GIT utilities                                                                                                             | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/git-extras?color=f9d194)](https://formulae.brew.sh/formula/git-extras)                                                                                                                                                        | Use `git-extras` to display all available commands.                                                                                                                                            |
    | [grex](https://github.com/pemistahl/grex)                                            | Generates regular expressions from user-provided test cases                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/grex?color=f9d194)](https://formulae.brew.sh/formula/grex)<br>[![Crates.io](https://img.shields.io/crates/v/grex?color=dea584)](https://crates.io/crates/grex)                                                                |                                                                                                                                                                                                |
    | [hub](https://github.com/github/hub)                                                 | A command-line tool that makes git easier to use with GitHub                                                              | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/hub?color=f9d194)](https://formulae.brew.sh/formula/hub)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [Homebrew Command Not Found](https://github.com/Homebrew/homebrew-command-not-found) | Ubuntu’s command-not-found equivalent for Homebrew on macOS                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/cloc?color=f9d194)](https://formulae.brew.sh/formula/cloc)                                                                                                                                                                    | Not a command.<br>[Install instructions](https://github.com/Homebrew/homebrew-command-not-found#install).                                                                                      |
    | [hstr](https://github.com/dvorka/hstr)                                               | Easily view, navigate, sort and use your command history with shell history suggest box                                   | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/hstr?color=f9d194)](https://formulae.brew.sh/formula/hstr)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [htop](https://github.com/htop-dev/htop)                                             | Improved top (interactive process viewer)                                                                                 | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/htop?color=f9d194)](https://formulae.brew.sh/formula/htop)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [httpie](https://github.com/httpie/httpie)                                           | User-friendly cURL replacement (command-line HTTP client)                                                                 | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/httpie?color=f9d194)](https://formulae.brew.sh/formula/httpie)<br>[![PyPI](https://img.shields.io/pypi/v/httpie?color=3572A5)](https://pypi.org/project/httpie/)                                                              | Command: `http`.                                                                                                                                                                               |
    | [jq](https://github.com/stedolan/jq)                                                 | Command-line JSON processor                                                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/jq?color=f9d194)](https://formulae.brew.sh/formula/jq)                                                                                                                                                                        |                                                                                                                                                                                                |
    | [lsd](https://github.com/Peltoche/lsd)                                               | The next gen ls command                                                                                                   | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/lsd?color=f9d194)](https://formulae.brew.sh/formula/lsd)<br>[![Crates.io](https://img.shields.io/crates/v/lsd?color=dea584)](https://crates.io/crates/lsd)                                                                    |                                                                                                                                                                                                |
    | [lynis](https://github.com/CISOfy/lynis)                                             | Security and system auditing tool to harden systems                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/lynis?color=f9d194)](https://formulae.brew.sh/formula/lynis)                                                                                                                                                                  | Recommended install method: [Git](https://github.com/CISOfy/Lynis).                                                                                                                            |
    | [mas](https://github.com/mas-cli/mas)                                                | Mac App Store command line interface                                                                                      | macOS           | [![homebrew version](https://img.shields.io/homebrew/v/mas?color=f9d194)](https://formulae.brew.sh/formula/mas)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [muffet](https://github.com/raviqqe/muffet)                                          | Fast website link checker in Go                                                                                           | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/muffet?color=f9d194)](https://formulae.brew.sh/formula/muffet)                                                                                                                                                                |                                                                                                                                                                                                |
    | [ncdu](https://code.blicky.net/yorhel/ncdu)                                          | ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du'                                                | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/ncdu?color=f9d194)](https://formulae.brew.sh/formula/ncdu)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [nmap](https://github.com/nmap/nmap)                                                 | Network exploration tool and security / port scanner                                                                      | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/nmap?color=f9d194)](https://formulae.brew.sh/formula/nmap)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [pdfgrep](https://gitlab.com/pdfgrep/pdfgrep)                                        | A tool to search text in PDF files. It works similarly to grep.                                                           | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pdfgrep?color=f9d194)](https://formulae.brew.sh/formula/pdfgrep)                                                                                                                                                              |                                                                                                                                                                                                |
    | [prettier](https://github.com/prettier/prettier)                                     | Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML                                                         | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/prettier?color=f9d194)](https://formulae.brew.sh/formula/prettier)<br>[![npm](https://img.shields.io/npm/v/prettier?color=f1e05a)](https://www.npmjs.com/package/prettier)                                                    | Recommended install method: [Npm](https://www.npmjs.com/package/prettier).                                                                                                                     |
    | [pstree](http://www.thp.uni-duisburg.de/pstree/)                                     | List processes as a tree                                                                                                  | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pstree?color=f9d194)](https://formulae.brew.sh/formula/pstree)                                                                                                                                                                |                                                                                                                                                                                                |
    | [pipenv](https://github.com/pypa/pipenv)                                             | Python dependency management tool                                                                                         | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pipenv?color=f9d194)](https://formulae.brew.sh/formula/pipenv)<br>[![PyPI](https://img.shields.io/pypi/v/pipenv?color=3572A5)](https://pypi.org/project/pipenv/)                                                              |                                                                                                                                                                                                |
    | [pylint](https://github.com/PyCQA/pylint)                                            | It's not just a linter that annoys you!                                                                                   | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/pylint?color=f9d194)](https://formulae.brew.sh/formula/pylint)<br>[![PyPI](https://img.shields.io/pypi/v/pylint?color=3572A5)](https://pypi.org/project/pylint/)                                                              |                                                                                                                                                                                                |
    | [shellcheck](https://github.com/koalaman/shellcheck)                                 | Shell script analysis tool                                                                                                | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/shellcheck?color=f9d194)](https://formulae.brew.sh/formula/shellcheck)                                                                                                                                                        |                                                                                                                                                                                                |
    | [symboliclinker](https://github.com/nickzman/symboliclinker)                         | A contextual menu plugin & service for Mac OS X that allows users to make symbolic links in the Finder                    | macOS           | [![homebrew version](https://img.shields.io/homebrew/cask/v/symboliclinker?color=f9d194)](https://formulae.brew.sh/cask/symboliclinker)                                                                                                                                              | Not a command.                                                                                                                                                                                 |
    | [terminal-notifier](https://github.com/julienXX/terminal-notifier)                   | Send macOS User Notifications from the command-line                                                                       | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/terminal-notifier?color=f9d194)](https://formulae.brew.sh/formula/terminal-notifier)<br>[![Gem](https://img.shields.io/gem/v/terminal-notifier?color=701516)](https://rubygems.org/gems/terminal-notifier)                    | Not a command.<br>Also see the [bgnotify](#oh-my-zsh-plugins) plugin.                                                                                                                          |
    | [tldr](https://github.com/tldr-pages/tldr)                                           | Simplified and community-driven man pages                                                                                 | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tldr?color=f9d194)](https://formulae.brew.sh/formula/tldr)<br>[![npm](https://img.shields.io/npm/v/tldr?color=f1e05a)](https://www.npmjs.com/package/tldr)                                                                    |                                                                                                                                                                                                |
    | [tmux](https://github.com/tmux/tmux)                                                 | Terminal multiplexer                                                                                                      | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tmux?color=f9d194)](https://formulae.brew.sh/formula/tmux)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [trash-cli](https://github.com/andreafrancia/trash-cli)                              | Command line interface to the freedesktop.org trashcan                                                                    | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/trash-cli?color=f9d194)](https://formulae.brew.sh/formula/trash-cli)<br>[![PyPI](https://img.shields.io/pypi/v/trash-cli?color=3572A5)](https://pypi.org/project/trash-cli/)                                                  | Command: `trash` (alias for `trash-put`), `trash-empty`, `trash-list`, `trash-restore`, `trash-rm`.                                                                                            |
    | [tree](http://mama.indstate.edu/users/ice/tree/)                                     | Display directories as trees (with optional color/HTML output)                                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/tree?color=f9d194)](https://formulae.brew.sh/formula/tree)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [vim](https://github.com/vim/vim)                                                    | Vi 'workalike' with many additional features                                                                              | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/vim?color=f9d194)](https://formulae.brew.sh/formula/vim)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [wget](https://www.gnu.org/software/wget/)                                           | Internet file retriever                                                                                                   | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/wget?color=f9d194)](https://formulae.brew.sh/formula/wget)                                                                                                                                                                    |                                                                                                                                                                                                |
    | [youtube-dl](https://github.com/ytdl-org/youtube-dl)                                 | Command-line program to download videos from YouTube.com and other video sites                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/youtube-dl?color=f9d194)](https://formulae.brew.sh/formula/youtube-dl)<br>[![PyPI](https://img.shields.io/pypi/v/youtube-dl?color=3572A5)](https://pypi.org/project/youtube-dl/)                                              |                                                                                                                                                                                                |
    | [zip](http://infozip.sourceforge.net/Zip.html)                                       | Compression and file packaging/archive utility                                                                            | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zip?color=f9d194)](https://formulae.brew.sh/formula/zip)                                                                                                                                                                      |                                                                                                                                                                                                |
    | [zsh](https://www.zsh.org/)                                                          | UNIX shell (command interpreter)                                                                                          | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh?color=f9d194)](https://formulae.brew.sh/formula/zsh)                                                                                                                                                                      | Not a command.                                                                                                                                                                                 |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)              | Fish-like autosuggestions for zsh                                                                                         | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh-autosuggestions?color=f9d194)](https://formulae.brew.sh/formula/zsh-autosuggestions)<br>[![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/zsh-users/zsh-autosuggestions)             | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).     |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)      | Fish shell like syntax highlighting for Zsh                                                                               | macOS<br>Linux  | [![homebrew version](https://img.shields.io/homebrew/v/zsh-syntax-highlighting?color=f9d194)](https://formulae.brew.sh/formula/zsh-syntax-highlighting)<br>[![Github](https://img.shields.io/badge/git-git%20clone-lightgrey)](https://github.com/zsh-users/zsh-syntax-highlighting) | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh). |

=== "Native Package Manager"

    Applicable Operating Systems: Linux

    | Programs                                                                        | Description                                                                                             | Number of Repository Families Featuring this Package                                                                                                    | Other Info                                                                                                                                                                                                                               |
    | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
    | [apt-listchanges](https://tracker.debian.org/pkg/apt-listchanges)               | Package change history notification tool                                                                | [![Packaging status](https://repology.org/badge/tiny-repos/apt-listchanges.svg)](https://repology.org/project/apt-listchanges/versions)                 | Specific the the `apt` package manager.<br>Rarely used as a command.                                                                                                                                                                     |
    | [black](https://github.com/psf/black)                                           | The uncompromising Python code formatter                                                                | [![Packaging status](https://repology.org/badge/tiny-repos/black.svg)](https://repology.org/project/black/versions)                                     | Recommended install method: [Homebrew](https://formulae.brew.sh/formula/black) OR [Pip](https://pypi.org/project/black/).                                                                                                                |
    | [bat](https://github.com/sharkdp/bat)                                           | Clone of cat(1) with syntax highlighting and Git integration                                            | [![Packaging status](https://repology.org/badge/tiny-repos/bat-cat.svg)](https://repology.org/project/bat-cat/versions)                                 | Command: `batcat` OR `bat`.                                                                                                                                                                                                              |
    | [cloc](https://github.com/AlDanial/cloc)                                        | cloc counts blank lines, comment lines, and physical lines of source code in many programming languages | [![Packaging status](https://repology.org/badge/tiny-repos/cloc.svg)](https://repology.org/project/cloc/versions)                                       |                                                                                                                                                                                                                                          |
    | [codespell](https://github.com/codespell-project/codespell)                     | Check code for common misspellings                                                                      | [![Packaging status](https://repology.org/badge/tiny-repos/codespell.svg)](https://repology.org/project/codespell/versions)                             |                                                                                                                                                                                                                                          |
    | [deborphan](https://tracker.debian.org/pkg/deborphan)                           | Program that can find unused packages, e.g. libraries                                                   | [![Packaging status](https://repology.org/badge/tiny-repos/deborphan.svg)](https://repology.org/project/deborphan/versions)                             | Specific the the `apt` package manager.                                                                                                                                                                                                  |
    | [fd-find](https://github.com/sharkdp/fd)                                        | A simple, fast and user-friendly alternative to find                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/fd-find.svg)](https://repology.org/project/fd-find/versions)                                 | Command: `fd`.                                                                                                                                                                                                                           |
    | [gitsome](https://github.com/donnemartin/gitsome)                               | A Supercharged Git/Shell Autocompleter with GitHub Integration                                          | [![Packaging status](https://repology.org/badge/tiny-repos/gitsome.svg)](https://repology.org/project/gitsome/versions)                                 |                                                                                                                                                                                                                                          |
    | [git-extras](https://github.com/tj/git-extras)                                  | GIT utilities                                                                                           | [![Packaging status](https://repology.org/badge/tiny-repos/git-extras.svg)](https://repology.org/project/git-extras/versions)                           | Use `git-extras` to display all available commands.                                                                                                                                                                                      |
    | [hub](https://github.com/github/hub)                                            | A command-line tool that makes git easier to use with GitHub                                            | [![Packaging status](https://repology.org/badge/tiny-repos/hub.svg)](https://repology.org/project/hub/versions)                                         |                                                                                                                                                                                                                                          |
    | [hstr](https://github.com/dvorka/hstr)                                          | Easily view, navigate, sort and use your command history with shell history suggest box                 | [![Packaging status](https://repology.org/badge/tiny-repos/hstr.svg)](https://repology.org/project/hstr/versions)                                       |                                                                                                                                                                                                                                          |
    | [htop](https://hisham.hm/htop/)                                                 | A cross-platform interactive process viewer                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/htop.svg)](https://repology.org/project/htop/versions)                                       |                                                                                                                                                                                                                                          |
    | [httpie](https://github.com/httpie/httpie)                                      | User-friendly cURL replacement (command-line HTTP client)                                               | [![Packaging status](https://repology.org/badge/tiny-repos/httpie.svg)](https://repology.org/project/httpie/versions)                                   |                                                                                                                                                                                                                                          |
    | [jq](https://github.com/stedolan/jq)                                            | Command-line JSON processor                                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/jq.svg)](https://repology.org/project/jq/versions)                                           |                                                                                                                                                                                                                                          |
    | [lsd](https://github.com/Peltoche/lsd)                                          | The next gen ls command                                                                                 | [![Packaging status](https://repology.org/badge/tiny-repos/lsd.svg)](https://repology.org/project/lsd/versions)                                         |                                                                                                                                                                                                                                          |
    | [lynis](https://github.com/CISOfy/lynis)                                        | Security and system auditing tool to harden systems                                                     | [![Packaging status](https://repology.org/badge/tiny-repos/lynis.svg)](https://repology.org/project/lynis/versions)                                     | Recommended install method: [Git](https://github.com/CISOfy/Lynis).                                                                                                                                                                      |
    | [ncdu](https://code.blicky.net/yorhel/ncdu)                                     | ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du'                              | [![Packaging status](https://repology.org/badge/tiny-repos/ncdu.svg)](https://repology.org/project/ncdu/versions)                                       |                                                                                                                                                                                                                                          |
    | [nmap](https://nmap.org/)                                                       | Network exploration tool and security / port scanner                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/nmap.svg)](https://repology.org/project/nmap/versions)                                       |                                                                                                                                                                                                                                          |
    | [pdfgrep](https://gitlab.com/pdfgrep/pdfgrep)                                   | pdfgrep is a tool to search text in PDF files. It works similarly to grep.                              | [![Packaging status](https://repology.org/badge/tiny-repos/pdfgrep.svg)](https://repology.org/project/pdfgrep/versions)                                 |                                                                                                                                                                                                                                          |
    | [python-is-python3](https://packages.debian.org/unstable/python-is-python3)     | symlinks /usr/bin/python to python3                                                                     | ???                                                                                                                                                     | Not a command.                                                                                                                                                                                                                           |
    | [shellcheck](https://www.shellcheck.net/)                                       | Shell script analysis tool                                                                              | [![Packaging status](https://repology.org/badge/tiny-repos/shellcheck.svg)](https://repology.org/project/shellcheck/versions)                           |                                                                                                                                                                                                                                          |
    | [tldr](https://github.com/tldr-pages/tldr)                                      | Simplified and community-driven man pages                                                               | [![Packaging status](https://repology.org/badge/tiny-repos/tldr.svg)](https://repology.org/project/tldr/versions)                                       |                                                                                                                                                                                                                                          |
    | [tmux](https://tmux.github.io/)                                                 | Terminal multiplexer                                                                                    | [![Packaging status](https://repology.org/badge/tiny-repos/tmux.svg)](https://repology.org/project/tmux/versions)                                       |                                                                                                                                                                                                                                          |
    | [trash-cli](https://github.com/andreafrancia/trash-cli)                         | Command line interface to the freedesktop.org trashcan                                                  | [![Packaging status](https://repology.org/badge/tiny-repos/trash-cli.svg)](https://repology.org/project/trash-cli/versions)                             | Command: `trash` (alias for `trash-put`), `trash-empty`, `trash-list`, `trash-restore`, `trash-rm`.<br>Recommended install method: [Homebrew](https://formulae.brew.sh/formula/trash-cli) OR [Pip](https://pypi.org/project/trash-cli/). |
    | [tree](http://mama.indstate.edu/users/ice/tree/)                                | Display directories as trees (with optional color/HTML output)                                          | N/A                                                                                                                                                     |                                                                                                                                                                                                                                          |
    | [vim](https://www.vim.org/)                                                     | Vi 'workalike' with many additional features                                                            | [![Packaging status](https://repology.org/badge/tiny-repos/vim.svg)](https://repology.org/project/vim/versions)                                         |                                                                                                                                                                                                                                          |
    | [wget](https://www.gnu.org/software/wget/)                                      | Internet file retriever                                                                                 | [![Packaging status](https://repology.org/badge/tiny-repos/wget.svg)](https://repology.org/project/wget/versions)                                       |                                                                                                                                                                                                                                          |
    | [youtube-dl](https://github.com/ytdl-org/youtube-dl)                            | Command-line program to download videos from YouTube.com and other video sites                          | [![Packaging status](https://repology.org/badge/tiny-repos/youtube-dl.svg)](https://repology.org/project/youtube-dl/versions)                           |                                                                                                                                                                                                                                          |
    | [zip](http://www.info-zip.org/Zip.html)                                         | Compression and file packaging/archive utility                                                          | [![Packaging status](https://repology.org/badge/tiny-repos/zip.svg)](https://repology.org/project/zip/versions)                                         |                                                                                                                                                                                                                                          |
    | [zsh](https://www.zsh.org/)                                                     | UNIX shell (command interpreter)                                                                        | [![Packaging status](https://repology.org/badge/tiny-repos/zsh.svg)](https://repology.org/project/zsh/versions)                                         | Not a command.                                                                                                                                                                                                                           |
    | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)         | Fish-like autosuggestions for zsh                                                                       | [![Packaging status](https://repology.org/badge/tiny-repos/zsh-autosuggestions.svg)](https://repology.org/project/zsh-autosuggestions/versions)         | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).                                               |
    | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Fish shell like syntax highlighting for Zsh                                                             | [![Packaging status](https://repology.org/badge/tiny-repos/zsh-syntax-highlighting.svg)](https://repology.org/project/zsh-syntax-highlighting/versions) | Not a command.<br>[Zsh](https://github.com/zsh-users/zsh) must be installed.<br>[Install instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh).                                           |

## Customizing ZSH Shell

### Framework

The framework that I use and find to be the best is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009. So it's had many years to evolve and perfect itself.

[Below](#oh-my-zsh-plugins), I also have a list of Oh-my-zsh plugins that I personally use.

### Shell Theme

The theme that I use in combination with oh-my-zsh is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable and very appealing to the eyes.

### ZSH Resource File

??? Info "My .zshrc"

    Below, I have provided my zsh resource file in its entirety. You can use it however you wish, but my intent is to let you use it as a reference for how I organize my own `.zshrc` file, as well as provide the other configurations that I don't explicitly mention anywhere else in this document. Note that there is information that I've omitted for security and privacy sake. Omitted information has been replaced with `---`.

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
        plugins=(colored-man-pages copybuffer copydir copyfile bgnotify)

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

        ########################################################################################
        #### [[ Group 1 ]]


        alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
        alias edisk="cd /Volumes && ll"
        alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
        alias batterylife="pmset -g batt"
        alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
        # Restart coreaudio on macOS
        alias rscoreaudio="sudo kill -9 \"$(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')\""
        # GNU cp
        alias cp="gcp"


        #### End of [[ Group 1 ]]
        ########################################################################################
        #### [[ Group 2 ]]
        #### Due to the sheer number of commands, it's impossible to remember them all. So the
        #### aliases below are supposed to make it easier to remember by allowing you to print
        #### out a list of useful commands.


        alias listtools="echo -e \"
        ################################################################################
        #### [ Package Manager installed commands ]

        bandwhich  - Terminal bandwidth utilization tool
        bat        - Clone of cat(1) with syntax highlighting and Git integration
        btm        - Yet another cross-platform graphical process/system monitor
        cloc       - Counts blank lines, comment lines, and physical lines of source
                     code in many programming languages
        codespell  - Check code for common misspellings
        duf        - Disk Usage/Free Utility - a better 'df' alternative
        duti       - Set default document and URL handlers
        fd         - A simple, fast and user-friendly alternative to find
        grex       - Generates regular expressions from user-provided test cases
        hstr       - Easily view, navigate, sort and use your command history with shell
                     history suggest box
        htop       - Improved top (interactive process viewer)
        http       - User-friendly cURL replacement (command-line HTTP client)
        jq         - Command-line JSON processor
        lsd        - The next gen ls command
        mas        - Mac App Store command line interface
        muffet     - Fast website link checker in Go
        ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the
                     well-known 'du'
        nmap       - Network exploration tool and security / port scanner
        pdfgrep    - A tool to search text in PDF files. It works similarly to grep
        pipenv     - Python dependency management tool
        pstree     - List processes as a tree
        tldr       - Simplified and community-driven man pages
        tmux       - Terminal multiplexer
        tree       - Display directories as trees (with optional color/HTML output)
        wget       - Internet file retriever
        youtube-dl - Command-line program to download videos from YouTube.com and other
                     video sites
        zip        - Compression and file packaging/archive utility


        ################################################################################
        #### [[ Grouped commands ]]

        listtools_trash      - List of trash related commands
        listtools_formatters - List of code formatters and linters
        listtools_git        - List of programs oriented around git


        ################################################################################
        #### [ Oh-my-zsh plugin commands ]

        copydir  - Copies the path of your current folder to the system clipboard
        copyfile - Puts the contents of a file in your system clipboard so you can
                paste it anywhere

        ################################################################################
        #### [[ Keyboard combinations ]]

        Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'
        \""
        alias listtools_trash="echo -e \"
        ################################################################################
        #### [ Trash commands ]

        trash         - Alias for trash-put.
        trash-put     - Trash files and directories.
        trash-empty   - Empty the trashcan(s).
        trash-list    - List trashed files.
        trash-restore - Restore a trashed file.
        trash-rm      - Remove individual files from the trashcan.
        \""
        alias listtools_formatters="echo -e \"
        ################################################################################
        #### [ Code formatters and linters ]

        black      - The uncompromising Python code formatter
        prettier   - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
        pylint     - It's not just a linter that annoys you!
        shellcheck - Shell script analysis tool
        \""
        alias listtools_git="echo -e \"
        ################################################################################
        #### [ Git related ]

        gitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration
        git-extras - GIT utilities
        hub        - A command-line tool that makes git easier to use with GitHub
        \""


        #### End of [[ Group 2]]
        ########################################################################################

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

        # Homebrew's "sbin"
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

        ```

    === "Linux"

        ```bash
        export GPG_TTY=$(tty)

        # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
        # Initialization code that may require console input (password prompts, [y/n]
        # confirmations, etc.) must go above this block; everything else may go below.
        if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
            source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
        fi

        # If you come from bash you might have to change your $PATH.
        # export PATH=$HOME/bin:/usr/local/bin:$PATH

        # Path to your oh-my-zsh installation.
        export ZSH="/home/ranger/.oh-my-zsh"

        # Set name of the theme to load --- if set to "random", it will
        # load a random theme each time oh-my-zsh is loaded, in which case,
        # to know which specific one was loaded, run: echo $RANDOM_THEME
        # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
        ZSH_THEME="powerlevel10k/powerlevel10k"

        # Set list of themes to pick from when loading at random
        # Setting this variable when ZSH_THEME=random will cause zsh to load
        # a theme from this variable instead of looking in $ZSH/themes/
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
        # DISABLE_MAGIC_FUNCTIONS="true"

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
        # Standard plugins can be found in $ZSH/plugins/
        # Custom plugins may be added to $ZSH_CUSTOM/plugins/
        # Example format: plugins=(rails git textmate ruby lighthouse)
        # Add wisely, as too many plugins slow down shell startup.
        plugins=(colored-man-pages copybuffer copydir copyfile)

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

        ########################################################################################
        #### [ General Aliases ]

        ########################################################################################
        #### [[ Group 1 ]]


        alias updateapt="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
        alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
        alias updateboth="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && brew update && brew upgrade && brew autoremove && brew cleanup"


        #### End of [[ Group 1 ]]
        ########################################################################################
        #### [[ Group 2 ]]
        #### Due to the sheer number of commands, it's impossible to remember them all. So the
        #### aliases below are supposed to make it easier to remember by allowing you to print
        #### out a list of useful commands.


        alias listtools="echo -e \"
        ################################################################################
        #### [ Package Manager installed commands ]

        bandwhich  - Terminal bandwidth utilization tool
        bat        - Clone of cat(1) with syntax highlighting and Git integration
        btm        - Yet another cross-platform graphical process/system monitor
        cloc       - Counts blank lines, comment lines, and physical lines of source
                     code in many programming languages
        codespell  - Check code for common misspellings
        deborphan  - Program that can find unused packages, e.g. libraries
        duf        - Disk Usage/Free Utility - a better 'df' alternative
        fd         - A simple, fast and user-friendly alternative to find
        grex       - Generates regular expressions from user-provided test cases
        hstr       - Easily view, navigate, sort and use your command history with shell
                     history suggest box
        htop       - Improved top (interactive process viewer)
        http       - User-friendly cURL replacement (command-line HTTP client)
        jq         - Command-line JSON processor
        lsd        - The next gen ls command
        muffet     - Fast website link checker in Go
        ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the
                     well-known 'du'
        nmap       - Network exploration tool and security / port scanner
        pdfgrep    - A tool to search text in PDF files. It works similarly to grep
        pipenv     - Python dependency management tool
        pstree     - List processes as a tree
        tldr       - Simplified and community-driven man pages
        tmux       - Terminal multiplexer
        tree       - Display directories as trees (with optional color/HTML output)
        wget       - Internet file retriever
        youtube-dl - Command-line program to download videos from YouTube.com and other
                     video sites
        zip        - Compression and file packaging/archive utility


        ################################################################################
        #### [[ Grouped commands ]]

        listtools_trash      - List of trash related commands
        listtools_formatters - List of code formatters and linters
        listtools_git        - List of programs oriented around git


        ################################################################################
        #### [ Oh-my-zsh plugin commands ]

        copydir  - Copies the path of your current folder to the system clipboard
        copyfile - Puts the contents of a file in your system clipboard so you can
                   paste it anywhere

        ################################################################################
        #### [[ Keyboard combinations ]]

        Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'
        \""
        alias listtools_trash="echo -e \"
        ################################################################################
        #### [ Trash commands ]

        trash         - Alias for trash-put.
        trash-put     - Trash files and directories.
        trash-empty   - Empty the trashcan(s).
        trash-list    - List trashed files.
        trash-restore - Restore a trashed file.
        trash-rm      - Remove individual files from the trashcan.
        \""
        alias listtools_formatters="echo -e \"
        ################################################################################
        #### [ Code formatters and linters ]

        black      - The uncompromising Python code formatter
        prettier   - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
        pylint     - It's not just a linter that annoys you!
        shellcheck - Shell script analysis tool
        \""
        alias listtools_git="echo -e \"
        ################################################################################
        #### [ Git related ]

        gitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration
        git-extras - GIT utilities
        hub        - A command-line tool that makes git easier to use with GitHub
        \""


        #### End of [[ Group 2]]
        ########################################################################################

        #### End of [ General Aliases ]
        ########################################################################################
        #### [ Environmental variables ]


        # If PowerLevel10K's Instant Prompt is enabled, `export GPG_TTY=$(tty)` needs to be
        # placed at the top of this file. Find more information here:
        # https://unix.stackexchange.com/questions/608842/zshrc-export-gpg-tty-tty-says-not-a-tty/608921#608921
        #export GPG_TTY=$(tty)

        # Sometimes non-globally accessible programs get stored here
        export PATH="/home/ranger/.local/bin:$PATH"
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
        source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        # Zsh "plugin" installed via Homebrew: `brew install zsh-syntax-highlighting`
        # Alternative install methods:
        # https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
        source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        # Fixes slow pasting with when using zsh-syntax-highlighting.
        # Find more information here:
        # https://github.com/zsh-users/zsh-syntax-highlighting/issues/295#issuecomment-214581607
        zstyle ':bracketed-paste-magic' active-widgets '.self-*'


        #### End of [ Sourced Files ]
        ########################################################################################
        #### [ Other stuff ]


        ## Node Version Manager stuff
        #export NVM_DIR="$HOME/.nvm"
        #[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


        #### End of [ Other Stuff ]
        ########################################################################################
        ```

#### Oh-my-zsh Plugins

This is a list of all the oh-my-zsh plugins that I use and find to provide useful functionality. Note that all of the commands provided by these plugins are also listed in the `listtools` aliases provided above.

| Plugins                                                                                       | Description                                                       | Other Info                                                                                                     |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) | Adds colors to man pages                                          | Not a command                                                                                                  |
| [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer)               | Allows you to copy what you are currently typing, via Ctrl + O    | Not a command<br>Key Combination: `Ctrl` + `O`                                                                 |
| [copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir)                     | Copies the path of your working directory                         |                                                                                                                |
| [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile)                   | Copies the contents of a file                                     |                                                                                                                |
| [bgnotify](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify)                   | cross-platform background notifications for long running commands | Not a command<br>[Extra install instructions](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify) |

#### Custom Aliases

Below is a list of "General Purpose Aliases" that I have inside of my `.zshrc`. They are broken up into two groups. "Group 1" contains a number command based aliases. "Group 2" contains aliases that are meant to provide a list of useful commands, that of which can be hard to remember due the sheer number of them. Most, if not all, of the commands presented in the [Useful Programs](#useful-programs) and [Oh-my-zsh Plugins](#oh-my-zsh-plugins) section are in the second group of the aliases, and vise-versa. To use these alaises, you will want to add the code below to the bottom of your `.zshrc` file located in your home directory.

=== "macOS"

    ```bash
    ########################################################################################
    #### [ General Aliases ]

    ########################################################################################
    #### [[ Group 1 ]]


    alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
    alias edisk="cd /Volumes && ll"
    alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
    alias batterylife="pmset -g batt"
    alias batterycycles="system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'"
    # Restart coreaudio on macOS
    alias rscoreaudio="sudo kill -9 \"$(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')\""
    # GNU cp
    alias cp="gcp"


    #### End of [[ Group 1 ]]
    ########################################################################################
    #### [[ Group 2 ]]
    #### Due to the sheer number of commands, it's impossible to remember them all. So the
    #### aliases below are supposed to make it easier to remember by allowing you to print
    #### out a list of useful commands.


    alias listtools="echo -e \"
    ################################################################################
    #### [ Package Manager installed commands ]

    bandwhich  - Terminal bandwidth utilization tool
    bat        - Clone of cat(1) with syntax highlighting and Git integration
    btm        - Yet another cross-platform graphical process/system monitor
    cloc       - Counts blank lines, comment lines, and physical lines of source
                    code in many programming languages
    codespell  - Check code for common misspellings
    duf        - Disk Usage/Free Utility - a better 'df' alternative
    duti       - Set default document and URL handlers
    fd         - A simple, fast and user-friendly alternative to find
    grex       - Generates regular expressions from user-provided test cases
    hstr       - Easily view, navigate, sort and use your command history with shell
                    history suggest box
    htop       - Improved top (interactive process viewer)
    http       - User-friendly cURL replacement (command-line HTTP client)
    jq         - Command-line JSON processor
    lsd        - The next gen ls command
    mas        - Mac App Store command line interface
    muffet     - Fast website link checker in Go
    ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the
                    well-known 'du'
    nmap       - Network exploration tool and security / port scanner
    pdfgrep    - A tool to search text in PDF files. It works similarly to grep
    pipenv     - Python dependency management tool
    pstree     - List processes as a tree
    tldr       - Simplified and community-driven man pages
    tmux       - Terminal multiplexer
    tree       - Display directories as trees (with optional color/HTML output)
    wget       - Internet file retriever
    youtube-dl - Command-line program to download videos from YouTube.com and other
                video sites
    zip        - Compression and file packaging/archive utility


    ################################################################################
    #### [[ Grouped commands ]]

    listtools_trash      - List of trash related commands
    listtools_formatters - List of code formatters and linters
    listtools_git        - List of programs oriented around git


    ################################################################################
    #### [ Oh-my-zsh plugin commands ]

    copydir  - Copies the path of your current folder to the system clipboard
    copyfile - Puts the contents of a file in your system clipboard so you can
            paste it anywhere

    ################################################################################
    #### [[ Keyboard combinations ]]

    Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'
    \""
    alias listtools_trash="echo -e \"
    ################################################################################
    #### [ Trash commands ]

    trash         - Alias for trash-put.
    trash-put     - Trash files and directories.
    trash-empty   - Empty the trashcan(s).
    trash-list    - List trashed files.
    trash-restore - Restore a trashed file.
    trash-rm      - Remove individual files from the trashcan.
    \""
    alias listtools_formatters="echo -e \"
    ################################################################################
    #### [ Code formatters and linters ]

    black      - The uncompromising Python code formatter
    prettier   - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
    pylint     - It's not just a linter that annoys you!
    shellcheck - Shell script analysis tool
    \""
    alias listtools_git="echo -e \"
    ################################################################################
    #### [ Git related ]

    gitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration
    git-extras - GIT utilities
    hub        - A command-line tool that makes git easier to use with GitHub
    \""


    #### End of [[ Group 2]]
    ########################################################################################

    #### End of [ General Aliases ]
    ########################################################################################
    ```

=== "Linux"

    ```bash
    ########################################################################################
    #### [ General Aliases ]

    ########################################################################################
    #### [[ Group 1 ]]


    alias updateapt="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
    alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor"
    alias updateboth="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && brew update && brew upgrade && brew autoremove && brew cleanup"


    #### End of [[ Group 1 ]]
    ########################################################################################
    #### [[ Group 2 ]]
    #### Due to the sheer number of commands, it's impossible to remember them all. So the
    #### aliases below are supposed to make it easier to remember by allowing you to print
    #### out a list of useful commands.


    alias listtools="echo -e \"
    ################################################################################
    #### [ Package Manager installed commands ]

    bandwhich  - Terminal bandwidth utilization tool
    bat        - Clone of cat(1) with syntax highlighting and Git integration
    btm        - Yet another cross-platform graphical process/system monitor
    cloc       - Counts blank lines, comment lines, and physical lines of source
                    code in many programming languages
    codespell  - Check code for common misspellings
    deborphan  - Program that can find unused packages, e.g. libraries
    duf        - Disk Usage/Free Utility - a better 'df' alternative
    fd         - A simple, fast and user-friendly alternative to find
    grex       - Generates regular expressions from user-provided test cases
    hstr       - Easily view, navigate, sort and use your command history with shell
                    history suggest box
    htop       - Improved top (interactive process viewer)
    http       - User-friendly cURL replacement (command-line HTTP client)
    jq         - Command-line JSON processor
    lsd        - The next gen ls command
    muffet     - Fast website link checker in Go
    ncdu       - ncdu (NCurses Disk Usage) is a curses-based version of the
                    well-known 'du'
    nmap       - Network exploration tool and security / port scanner
    pdfgrep    - A tool to search text in PDF files. It works similarly to grep
    pipenv     - Python dependency management tool
    pstree     - List processes as a tree
    tldr       - Simplified and community-driven man pages
    tmux       - Terminal multiplexer
    tree       - Display directories as trees (with optional color/HTML output)
    wget       - Internet file retriever
    youtube-dl - Command-line program to download videos from YouTube.com and other
                video sites
    zip        - Compression and file packaging/archive utility


    ################################################################################
    #### [[ Grouped commands ]]

    listtools_trash      - List of trash related commands
    listtools_formatters - List of code formatters and linters
    listtools_git        - List of programs oriented around git


    ################################################################################
    #### [ Oh-my-zsh plugin commands ]

    copydir  - Copies the path of your current folder to the system clipboard
    copyfile - Puts the contents of a file in your system clipboard so you can
                paste it anywhere

    ################################################################################
    #### [[ Keyboard combinations ]]

    Ctrl + O - Allows you to copy what you are currently typing, via 'Ctrl' + 'O'
    \""
    alias listtools_trash="echo -e \"
    ################################################################################
    #### [ Trash commands ]

    trash         - Alias for trash-put.
    trash-put     - Trash files and directories.
    trash-empty   - Empty the trashcan(s).
    trash-list    - List trashed files.
    trash-restore - Restore a trashed file.
    trash-rm      - Remove individual files from the trashcan.
    \""
    alias listtools_formatters="echo -e \"
    ################################################################################
    #### [ Code formatters and linters ]

    black      - The uncompromising Python code formatter
    prettier   - Code formatter for JavaScript, CSS, JSON, GraphQL, Markdown, YAML
    pylint     - It's not just a linter that annoys you!
    shellcheck - Shell script analysis tool
    \""
    alias listtools_git="echo -e \"
    ################################################################################
    #### [ Git related ]

    gitsome    - A Supercharged Git/Shell Autocompleter with GitHub Integration
    git-extras - GIT utilities
    hub        - A command-line tool that makes git easier to use with GitHub
    \""


    ######## End of [[ Group 2]]
    ########################################################################################

    #### End of [ General Aliases ]
    ########################################################################################
    ```

### Modifying LSCOLORS

LSCOLORS is what determines the color of the files and directories in the terminal when using ls based commands. To apply my custom LSCOLORS, I recommend opening `~/.zshrc` and placing `export LSCOLORS="exgxfxDxcxegDhabagacaD"` somewhere below the above custom aliases, if you added them.

You can optionally modify the terminal profile ANSI-colors to change the shading and such of the colors, to your liking. If you are using macOS, you can alternatively import my [personal terminal profile](#terminal-profile).

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

These configurations modify the behavior and look of vim. To make use of all the configurations listed below, you will need to first [install Vundle](https://github.com/VundleVim/Vundle.vim). You can use a different vim pakcage manager, but the configurations below are specific to Vundle. Once installed, place the code below into your `.vimrc` located at your home directory. Then to install the plugins, open `.vimrc` with vim, then enter `:source %` and `:PluginInstall` (separately). This should trigger Vundle to start installing the plugins specified in the configurations below.

!!! Note

    When using `:source %`, you can ignore any errors that might occur, as this will happen because the vim is looking for the plugins will they haven't been installed yet.

??? Info "Vim Plugin Info"

    Here is a list of all the plugins listed in the Vim Resource File, along with a description of what they do.

    | Plugins                                                                             | Description                                                                                                                     |
    | ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
    | [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                         | Git wrapper so awesome, it should be illegal                                                                                    |
    | [luochen1990/rainbow](https://github.com/luochen1990/rainbow)                       | Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful configuration.                            |
    | [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)                     | Using the jedi autocompletion library for VIM.                                                                                  |
    | [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)               | lean & mean status/tabline for vim that's light as air                                                                          |
    | [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) | A collection of themes for vim-airline                                                                                          |
    | [morhetz/gruvbox](https://github.com/morhetz/gruvbox)                               | Retro groove color scheme for Vim                                                                                               |
    | [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)                     | A solid language pack for Vim.                                                                                                  |
    | [preservim/nerdtree](https://github.com/preservim/nerdtree)                         | A tree explorer plugin for vim.                                                                                                 |
    | [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)                 | Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more |
    | [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)       | A plugin of NERDTree showing git status                                                                                         |
    | [edkolev/tmuxline.vim](https://github.com/edkolev/tmuxline.vim)                     | Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration            |
    | [dense-analysis/ale](https://github.com/dense-analysis/ale)                         | Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support                                   |

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

" Git wrapper so awesome, it should be illegal.
Plugin 'tpope/vim-fugitive'
" Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful
" configuration.
Plugin 'luochen1990/rainbow'
" Using the jedi autocompletion library for VIM.
Plugin 'davidhalter/jedi-vim'
" Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
" A collection of themes for vim-airline.
Plugin 'vim-airline/vim-airline-themes'
" Retro groove color scheme for Vim.
Plugin 'morhetz/gruvbox'
" A solid language pack for Vim.
Plugin 'sheerun/vim-polyglot'
" A tree explorer plugin for vim.
Plugin 'preservim/nerdtree'
" Adds file type icons to Vim plugins.
Plugin 'ryanoasis/vim-devicons'
" A plugin of NERDTree showing git status
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Simple tmux statusline generator with support for powerline symbols and
" statusline / airline / lightline integration.
Plugin 'edkolev/tmuxline.vim'
" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP)
" support.
Plugin 'dense-analysis/ale'

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

" Font: Power Line Font
set guifont=MesloLGS_NF:h12
" Plugin: rainbow
let g:rainbow_active = 1
" Plugin: vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
" Plugin: gruvbox
colorscheme gruvbox
set bg=dark
" Plugin: vim-devicons
set encoding=UTF-8


""""[ Useful Commands ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" :NERDTree - Opens NERDTree file system explorer
```

### Without Vundle Plugins

Suppose you rather not use all the configurations provided by Vundle. In that case, you can just place the below configurations into your`.vimrc`, located at your home directory. These configurations simply change some of the default vim settings while leaving the rest as is.

```vim
" Set's the default vim settings.
source $VIMRUNTIME/defaults.vim

" Overwrites specified default setting.
set tabstop=4     " Tells vim how many columns a tab counts for.
set shiftwidth=4  " 'Levels of indentation', where a level of indentation is shiftwidth
                  " columns of whitespace.
set expandtab     " Ensure that when you hit tab it will actually use spaces.
set mouse-=a      " Exchanges the ability to move the cursor with your mouse, with the
                  " ability to highlight and copy text.
```

## Terminal Profile

My custom terminal profile is a modified version of the Basic Terminal profile in macOS Catalina. To add it to your list of profiles and make it your default, follow the instructions below:

1. Open the Terminal application.
2. Click on Preferences... > Profiles > *the gear button at the bottom left of the window* > Import... > *locate and click on 'Basic (Modified).terminal' tab*
3. Click on the new terminal profile, then press the "Default" button located at the window's bottom.
