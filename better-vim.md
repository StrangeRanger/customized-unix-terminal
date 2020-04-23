# Overriding Default Vim

## Installing Vim via Homebrew

Though vim comes preinstalled on mac, there are a lot of useful features that are disabled by default. In order to enable these features we will reinstall/override the current vim.

Follow the steps below:

1. Install command-line tools: `xcode-select --install`
2. Wait until the command-line tools are completely installed
3. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
4. Install/override current vim: `brew install vim`

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