# Changelog

All notable changes to this project will be documented in this file.

As a note, if the changelog only says "removed(program)", assume it's been removed from the entire readme. If it's only from a specific section, it'll be specified within the parentheses of the change.

## 2023.6.27

- **added(vimrc)**: `ntpeters/vim-better-whitespace`.
- **added(vimrc)**: New file specific configurations.
- **changed(readme)**: Update url link of website status badge.
- **changed(readme/misc)**: Using new feature provided by updated dependencies/packages, I've removed many redundant files and replaced them with a single file that is used in multiple places. This should make maintaining this repository much easier.


## 2022.8.25

- **added(zshrc)**: New aliases.
- **added(zshrc)**: `git` plugin.
- **added(vimrc)**: Add specific configurations for markdown and txt files.
- **changed(zshrc)**: Update existing aliases.
- **changed(zshrc)**: The contents of `.zshrc` no longer contain the ENTIRE contents of my `.zshrc`, rather just most of the general configurations. It was becoming too much of a pain to continuously document every little change.
- **changed(vimrc)**: Slight wording/formatting changes.
- **removed(zshrc)**: Unnecessary code.
- **removed(program)**: `fd`/`fd-find`
- **removed(program)**: `git-quick-stats`

## 2022.7.17

- **added(vimrc)**: `valloric/youcompleteme`.
- **added(zshrc)**: New aliases.
- **added(readme)**: A link to the repository of the newly added vimrc plugin.
- **added(zshrc)**: Comments on the commands to download the zsh plugins.
- **changed(vimrc)**: Slight formatting change.
- **changed(zshrc)**: Modified plugins.
- **changed(zshrc)**: General refactoring.
- **changed(zshrc)**: A bunch of other small changes.

## 2022.5.26

- **changed(zshrc)**: Removed some code in the linux zshrc files that I don't consider to be general configurations.
- **changed(vimrc)**: Add specific configurations for Markdown files.
- **changed(readme)**: Changed the website status badge.

## 2022.5.24

- **added(zshrc)**: `LS_COLORS`, to match `LSCOLORS`...
- **added(vimrc)**: `set colorcolumn=89`.
- **added(profile)**: Terminal profile for the gnome terminal.
- **added(programs)**: `fzf`.
- **added(programs)**: `zsh-completions`.
- **added(programs)**: `gallery-dl`.
- **added(ohmyzsh-plugin)**: `zsh-autosuggestions`, removing the need to source it.
- **changed**: Update information in section **Modifying LSCOLORS** (which is now **Modifying CLI Colors**) to include information about `LS_COLORS`.
- **changed**: Update information, wording, and other things small throughout the document...
- **changed(vimrc)**: Now using vim-plug instead of Vundle. All information relating or referencing to Vundle, has been changed to vim-plug.
- **changed(zshrc)**: `LSCOLOR` is now set from `exgxfxDxcxegDhabagacaD` to `exgxfxDxcxegDhabagacaD`.
- **changed(zshrc)**: Created two separate versions of the linux zshrc file. One specific to desktop and the other to server.
- **changed(aliases)**: Update alias information.
- **removed(aliases)**: Unneeded aliases + alias content.
- **removed(program)**: `bottom`.
- **removed(program)**: `hstr`.

## 2022.3.1

- **added(programs)**: comments to `mkdocs.yml`.
- **changed(mkdocs)**: Updated plugins, features, and extensions used via `mkdocs.yml`.
- **changed(mkdocs)**: Updated version number of all packages in `mkdocs-requirements.txt`.
- **changed(zshrc)**: Updated deprecated zsh plugin `copydir` to `copypath`.
- **changed(README)**: The section of the document displaying my `.zshrc` and `.vimrc` files, uses the code from the files in the `insides` folder.

## 2021.12.21

- **added(programs)**: `git-quick-stats`.
- **added(programs)**: `pyenv`.
- **added(programs)**: `ffmpeg`.
- **added(programs)**: `asciinema`.
- **added(programs)**: `m-cli`.
- **added(programs)**: `.tmux`.
- **added(programs)**: `tmux`.
- **added(programs)**: `imagemagick`.
- **added(misc)**: *a few other things that I can't remember*.
- **changed**: Updated the **Custom Aliases** section.
- **changed**: Updated the **My .zshrc** section.
- **changed**: Updated Terminal Profile.
- **removed(program)**: `duti`.
- **removed(program)**: `jq`.
- **removed(program)**: `Homebrew Command Not Found`.
- **removed(program)**: `symboliclinker`.
- **removed(program)**: `tmux` and `wget` and `tree`, as they are usually installed by default.
- **removed(program)**: `gistome`.
- **removed(program)**: `git-extras`.
- **removed(vimrc)**: `davidhalter/jedi-vim`.
- **removed(vimrc)**: `tpope/vim-fugitive`.
- **removed(program)**: `edkolev/tmuxline.vim`.
- **removed(program)**: `pdfgrep`.
- **removed(program)**: `hub`.
- **removed(program)**: `cloc`.
- **fixed(readme)**: Wording and grammar throughout `README.md`.

## 2021.6.5

This is the first "release" where all configurations and such have been completely added.
