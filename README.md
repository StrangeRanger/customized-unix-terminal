<!-- NOTE TO EDITORS
If you are some user editing this file, I highly recommend you disable word wrapping, as
I've formatted all of the tables in such a way, it looks like a mess if word wrapping is
enabled. -->

# Customized Unix Terminal

[![Project Tracker](https://img.shields.io/badge/repo%20status-Project%20Tracker-lightgrey)](https://wiki.hthompson.dev/en/project-tracker)
[![Page Status](https://status.hthompson.dev/api/badge/10/status?downLabel=Website%20is%20down&upLabel=Website%20is%20up)](https://cut.hthompson.dev/)

This repository contains configurations that I use to modify my terminal's style and behavior, both on my Mac and Linux devices. I've additionally listed all of the command line based programs that I find to be very useful.

## Useful Programs

Below is a list of terminal programs that I either have installed on my system or find very useful. They are broken up into two categories: Non-Native Package Managers (NNPM) and Native Package Managers (NPM).

NNPM contains programs that can be installed via Homebrew, Pip, Cargo, Npm, Gem, and/or Git. For each program, I provide the applicable package managers, listed in the "Available Package Managers" section of the table. In most cases, the Git method can always be used, but will only be listed as such if it's the only option, the documentation recommends it, or I just prefer it over the use of a package manager.

NPM contains programs installable by an operating system's built in package manager, such as apt and yum.

/// tab | Homebrew, Pip, Cargo, Npm, Gem, Git
{{ read_csv("includes/csv/useful-packages-nnpm.csv") }}
///

/// tab | Native Package Manager
Applicable Operating Systems: Linux

{{ read_csv("includes/csv/useful-packages-npm.csv") }}
///

## Customizing ZSH Shell

### Framework

The framework that I use and find to be the best is [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh). It's one of the most popular zsh frameworks available and made it's first commit on August 23, 2009. So it's had many years to evolve and perfect itself.

[Below](#oh-my-zsh-plugins), I have also provided a list of oh-my-zsh plugins that I use.

### Shell Theme

The theme that I use in combination with oh-my-zsh is [Powerlevel10k](https://github.com/romkatv/powerlevel10k). It's highly configurable and very appealing to the eyes.

### ZSH Resource File

Below, I have provided my zsh resource file in (almost) its entirety. While a vast majority of my configurations are present, I have removed information that is very specific to my setup. I've done this to make maintaining this page easier and for the sake of privacy/security.

You can use it however you wish, though my intent is to let you use it as a reference for how I organize my own `.zshrc` file, as well as provide the other configurations that I don't explicitly mention anywhere else in this document.

/// details | My ZSH Resource File
//// tab | macOS
``` bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-macos.zsh"
```
////

//// tab | Linux
``` bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-linux.zsh"
```
////
///

#### Oh-my-zsh Plugins

This is a list of all the oh-my-zsh plugins that I use and find to provide useful functionality. Note that all of the commands provided by these plugins are also listed in the `listtools` aliases provided [below](#custom-aliases).

{{ read_csv("includes/csv/oh-my-zsh-plugins.csv") }}

#### Custom Aliases

Below is a list of "General Purpose Aliases" that I have inside of my `.zshrc`. They are broken up into two groups. "Group 1" contains a number command based aliases (yes I know that is redundant as all aliases are command based, but I wasn't sure what else to call it). "Group 2" contains aliases that are meant to provide a list of commands from the [Useful Programs](#useful-programs) and [Oh-my-zsh Plugins](#oh-my-zsh-plugins) section, that I find difficult to remember due the sheer number of them. To use these aliases, you will want to add the code below into of your `.zshrc` file.

/// tab | macOS
``` bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-macos-snippet.zsh:user_config"
```
///

/// tab | Linux
``` bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-linux-snippet.zsh:user_config"
```
///

### Modifying CLI Colors

When specify the color of the files and directories in the terminal (i.e. executables, symbolic links), we use `LSCOLORS` (only on macOS) and `LS_COLORS` (on both macOS and Linux).

/// details | LS_COLORS & LSCOLORS Explained
    type: info

Both `LSCOLORS` and `LS_COLORS` are required on macOS. `LSCOLORS` specifies the colors when using commands such as `ls`, while `LS_COLORS` specifies the colors used by zsh. In comparison, Linux only requires the use of `LS_COLORS`. It is used by both commands like `ls` and zsh.

Fundamentally, the `ls` command on macOS (BSD version) and Linux (GNU version) are not the same. `ls` on macOS utilizes the `LSCOLORS` for specifying the CLI colors, while Linux's version is `LS_COLORS`, both of which use different formatting. On top of this, zsh only understands the `LS_COLORS` format, which is why it must also be used on macOS, in order for the CLI colors to display and work properly.

Below is a key specifying what values of the `LSCOLORS` and `LS_COLORS` in my configurations mean/translates to:

{{ read_csv("includes/csv/cli-colors-explained.csv") }}

For more information on LS_COLORS and LSCOLORS, take a look at the following [gist](https://gist.github.com/thomd/7667642).
///

Below are my configurations for both macOS and Linux. To use them, place the following code in `~/.zshrc`:

/// tab | macOS
``` bash title="CLI Color Configuration"
--8<-- "includes/zshrc-files/zshrc-macos-snippet.zsh:ls_colors"
```
///

/// tab | Linux
``` bash title="CLI Color Configuration"
--8<-- "includes/zshrc-files/zshrc-linux-snippet.zsh:ls_colors"
```
///

You can additionally modify the shading and look of the CLI colors themselves, by modifying the your terminal profile's ANSI-color scheme. You can either do it manually ([macOS](https://support.apple.com/guide/terminal/change-profiles-text-preferences-trmltxt/mac)/[Linux](https://help.gnome.org/users/gnome-terminal/stable/app-colors.html.en)), or use my custom profile schemes down in the [Terminal Profile](#terminal-profile) section.

## Vim Resource File

### With Vim-Plug Plugins

These configurations modify the behavior and look of vim. To make use of all the configurations listed below, you will need to first [install vim-plug](https://github.com/junegunn/vim-plug#installation). You can use a different vim pakcage manager, but the configurations below are specific to vim-plug. Once installed, place the code below into your `.vimrc` located at your home directory. With `.vimrc` still opened, you can then install the plugins by entering `:source %` and `:PlugInstall` (as separate commands). This should trigger vim-plug to start installing the plugins specified in the configurations below.

/// details | Note
    open: true

When using `:source %`, you can ignore any errors that might occur, as they are (most likely) a result of vim looking for the plugins that have yet to be installed.
///

/// details | Vim Plugin Information
    type: info
Here is a list of all the plugins listed in the Vim Resource File, along with a description of what they do.

{{ read_csv("includes/csv/vim-plugin-info.csv") }}
///

``` vim title=".vimrc"
--8<-- "includes/vimrc-files/vimrc-vim-plug.vim"
```

### Without Vim-Plug Plugins

Suppose you rather not use all the configurations provided by vim-plug. In that case, you can just place the below configurations into your`.vimrc`. These configurations simply change some of the default vim settings while leaving the rest as is.

``` vim title=".vimrc"
--8<-- "includes/vimrc-files/vimrc-non-vim-plug.vim"
```

## Terminal Profile

/// tab | macOS
My custom terminal profile is a modified version of the "Basic Terminal" profile from macOS Catalina. To add it to your list of profiles and make it your default, follow the instructions below:

1. Download the terminal profile using the following link: <a href="Terminal%20Profiles/Basic%20%28Modified%29.terminal">Terminal Profile</a>
2. Open the Terminal application.
3. Click on **Preferences... --> Profiles --> _the gear icon at the bottom left of the window_ --> Import... --> _locate and click on the 'Basic (Modified).terminal' tab_**
4. Click on the new terminal profile, then press the "Default" button located at the bottom of the window.
///

/// tab | Linux
My custom terminal profile is a derivative of the Terminal Profile that I use on macOS. To add it to your list of profiles, follow the instructions below:

1. Download the terminal profile using the following link: <a href="Terminal%20Profiles/gnome-terminal-profiles.dconf">Terminal Profile</a>
2. Open a terminal window.
3. Enter the following command to import the profiles: `dconf load /org/gnome/terminal/legacy/profiles:/ < LOCATION_OF_DOWNLOADED_FILE`
    1. **WARNING: Using the above command will overwrite all existing profiles.**
///
