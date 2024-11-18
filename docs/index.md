<!-- NOTE TO EDITORS
If you are a user editing this file, I highly recommend you disable word wrapping as
I've formatted all the tables to look uniform when not using word wrapping.
-->

# Custom Unix Terminal


This document serves as a guide for how I customize my terminal in macOS and Linux. It includes a variety of configurations, settings, and programs that I find helpful for my daily workflow. The document is divided into several sections, each focusing on a different aspect of terminal customization.

## Useful Programs

The following table contains a list of terminal programs that I find particularly useful. These programs are separated into two categories: Third Party Package Managers (TPPM) and Native Package Managers (NPM).

The **TPPM** section features programs that can be installed using package managers like Homebrew, Pip, Cargo, Npm, Gem, or Git(1). For each program, I've included a brief description, the operating systems it supports, and the package managers available for installation.
{ .annotate }

1. While most of these programs can be installed via `git`, they will only be marked as such if recommended by the program's documentation or myself, or if it's the only available installation method.

The **NPM** section lists programs that can be installed using the system's default package manager. Since the primary Debian- and Arch-based Linux based distributions, all the programs in this section are confirmed to be installable via `apt` or `pacman`. For other Linux distributions, you can check [Repology](https://repology.org/) to see if the program is available in your distribution's package manager. Similar to the **TPPM** section, I've included additional information such as a brief description for each program and a link to its Repology page.

/// tab | Third Party Package Manager

{{ read_csv("includes/csv/useful-packages-tppm.csv") }}

///

/// tab | Native Package Manager
Applicable Operating Systems: Linux

{{ read_csv("includes/csv/useful-packages-npm.csv") }}

///

## Customizing ZSH

### Framework

[Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) is my preferred framework due to its popularity, reliability, and consistent updates. As one of the leading zsh frameworks, it made its initial commit on August 23, 2009, allowing it enough time to develop and refine its features.

[Below](#oh-my-zsh-plugins) is a list of oh-my-zsh plugins that I use and find to provide useful functionality.

### Shell Theme

In combination with oh-my-zsh, I use [Starship](https://github.com/starship/starship) as my shell theme. Starship is a fast, minimal, and highly customizable shell prompt that displays information about the current directory, git branch, and other relevant details. It is written in Rust, making it extremely fast and lightweight.

As a note, I previously used [Powerlevel10k](https://github.com/romkatv/powerlevel10k), which is another **excellent** shell theme. However, as of May 21, 2024, Powerlevel10k has entered a  ["life support" mode](https://github.com/romkatv/powerlevel10k/commit/bde5ca4c2aa6e0c52dd7f15cf216dffdb1ec788c). In the maintainer's words, "The project has very limited support", with "no new features are in the works", "most bugs will go unfixed", and "help requests will be ignored". As such, I decided to switch to an actively maintained project and mature alternative, Starship.

### ZSH Resource File

Below are the configurations for my `.zshrc` file, divided into two sections: one for macOS and one for Linux. Each section is tailored to its respective operating system.

You're welcome to use this resource however you like. My intention is to offer it as a guide for structuring your own `.zshrc` file and to present additional configurations not detailed elsewhere in this document.

/// details | My ZSH Resource File
//// tab | macOS

```bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-macos.zsh"
```

////

//// tab | Linux

```bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-linux.zsh"
```

////
///

#### Oh-my-zsh Plugins

Below is a list of all the oh-my-zsh plugins that I use and find particularly useful.

{{ read_csv("includes/csv/oh-my-zsh-plugins.csv") }}

#### Custom Aliases

Below is a list of aliases from my `.zshrc` files, organized into two groups: Group 1 and Group 2. Group 1 contains general aliases, while Group 2 includes aliases for categorized commands. Many of these commands are programs mentioned in the [Useful Programs](#useful-programs) section that I don't use frequently but still want quick access to.

/// tab | macOS

```bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-macos-snippet.zsh:user_config"
```

///

/// tab | Linux

```bash title=".zshrc"
--8<-- "includes/zshrc-files/zshrc-linux-snippet.zsh:user_config"
```

///

### Modifying CLI Colors

You can customize the terminal colors for folders, files, and other items in the terminal by setting the `LS_COLORS` (Linux & macOS) or `LSCOLORS` (macOS) environment variables. To modify these colors, add the appropriate `LS_COLORS` or `LSCOLORS` variable to your `.zshrc` file.

/// details | LS_COLORS & LSCOLORS Explained

On macOS, both `LSCOLORS` and `LS_COLORS` are necessary for specifying terminal colors. The `LSCOLORS` environment variable is used by commands like `ls` to determine the colors displayed in the terminal, while `LS_COLORS` is used by zsh for similar purposes. In contrast, Linux only requires `LS_COLORS`, which is utilized by both commands like `ls` and zsh.

This difference arises from the distinct versions of the `ls` command on macOS and Linux. macOS employs the FreeBSD version of `ls`, which relies on `LSCOLORS` for color settings, whereas Linux uses the GNU version, which depends on `LS_COLORS`. Each variable has its own unique formatting. Additionally, since zsh recognizes only the `LS_COLORS` format, it's important to set this variable on macOS to ensure proper display and functionality of CLI colors.

Included below is a key that explains the values of `LSCOLORS` and `LS_COLORS` in my configurations:

{{ read_csv("includes/csv/cli-colors-explained.csv") }}

For an in-depth understanding of `LS_COLORS` and `LSCOLORS`, I recommend visiting this [gist](https://gist.github.com/thomd/7667642).

///

Below are my configurations for both macOS and Linux systems. To apply these settings, simply add the following code to your `~/.zshrc` file:

/// tab | macOS

```bash title="CLI Color Configuration"
--8<-- "includes/zshrc-files/zshrc-macos-snippet.zsh:ls_colors"
```

///

/// tab | Linux

```bash title="CLI Color Configuration"
--8<-- "includes/zshrc-files/zshrc-linux-snippet.zsh:ls_colors"
```

///

You can further modify the shading and appearance of CLI colors by adjusting the ANSI color scheme in your terminal profile. This can be done manually, with guides available for both [macOS](https://support.apple.com/guide/terminal/change-profiles-text-preferences-trmltxt/mac) and [Linux](https://help.gnome.org/users/gnome-terminal/stable/app-colors.html.en) (specific to GNOME). Alternatively, you can use my custom profile schemes, which are detailed in the [Terminal Profile](#terminal-profile) section.

## Neovim Resource File

Due to the extensibility and community of Neovim, I have chosen it as my primary text editor, favoring it over the traditional Vi or Vim. Below are the configurations for my `init.vim` file, which is located in the `~/.config/nvim/` directory. The configurations are divided into two sections: with and without vim-plug plugins.

### With Vim-Plug Plugins

The following configurations modify the behavior and appearance of vim. To use these settings, you'll first need to install [vim-plug](https://github.com/junegunn/vim-plug#installation), a plugin manager for vim. While other vim package managers can be used, the configurations are tailored specifically for vim-plug.

After installing vim-plug, copy the code below into your `~/.config/nvim/init.vim` file. With `init.vim` open in `nvim`, initiate the plugin installation by entering `:source %` and `:PlugInstall` as separate commands. This will prompt vim-plug to begin the installation of the plugins outlined in the configurations below.

/// admonition | Note
When using `:source %`, you can ignore any errors that might occur, as they are (most likely) a result of nvim looking for the plugins that have yet to be installed.
///

/// details | Vim Plugin Information
    type: info
Here is a list of all the plugins listed in `init.vim`, along with a description of what they do.

{{ read_csv("includes/csv/neovim-plugin-info.csv") }}
///

```vim title="init.vim"
--8<-- "includes/neovim-init-files/neovim-init-vim-plug.vim"
```

### Without Vim-Plug Plugins

If you prefer not to use all the features offered by vim-plug, you can opt for a more basic setup by incorporating the configurations listed below into your `.vimrc` file. These adjustments modify certain default settings of vim without altering the core functionality, providing a simpler, more streamlined experience while maintaining the essence of vim's default behavior.

```vim title="init.vim"
--8<-- "includes/neovim-init-files/neovim-init-non-vim-plug.vim"
```

### Neovim GitHub Copilot

...coming soon...

### Installed TreeSitter Parsers

...coming soon...

## Terminal Profile

/// tab | macOS
My custom terminal profile is a modified version of the Basic profile that comes pre-installed on macOS. To add it to your list of profiles, follow the instructions below:

1. Download the terminal profile using the following link: <a href="Terminal%20Profiles/Basic%20%28Modified%29.terminal">Terminal Profile</a>
2. Open a terminal window.
3. Click on **Preferences... ==> Profiles ==> _the gear icon at the bottom left of the window_ ==> Import... ==> _locate and click on the 'Basic (Modified).terminal' tab_**
4. Click on the new terminal profile, then press the "Default" button located at the bottom of the window.
///

/// tab | Linux
My custom terminal profile is a based on the Terminal Profile that I use on macOS. To add it to your list of profiles, follow the instructions below:

1. Download the terminal profile using the following link: <a href="Terminal%20Profiles/gnome-terminal-profiles.dconf">Terminal Profile</a>
2. Open a terminal window.
3. Enter the following command to import the profiles: `dconf load /org/gnome/terminal/legacy/profiles:/ < LOCATION_OF_DOWNLOADED_FILE`

/// admonition | Warning
    type: warning
Using the above `dconf` command will overwrite all existing profiles
///
