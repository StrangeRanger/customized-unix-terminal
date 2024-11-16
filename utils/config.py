from pathlib import Path

NEOVIM_FILE_PATH_DICT = {
    "init_lua": {
        "from": Path("submodules/dotfiles/private_dot_config/nvim/second_init.lua"),
        "to": Path("includes/neovim-init-files/neovim-init-lua.lua"),
    },
    "init_vim_plug": {
        "from": Path("submodules/dotfiles/private_dot_config/nvim/init.vim"),
        "to": Path("includes/neovim-init-files/neovim-init-vim-plug.vim"),
    },
    "init_vim_no_plug": {
        "from": Path("submodules/dotfiles/private_dot_config/nvim/init.vim"),
        "to": Path("includes/neovim-init-files/neovim-init-non-vim-plug.vim"),
    },
}

ZSH_FILE_PATH_DICT = {
    "zshrc_linux": {
        "from": Path("submodules/dotfiles/.zshrc_linux.tmpl"),
        "to": Path("includes/zshrc-files/zshrc-linux.zsh"),
    },
    "zshrc_linux_snippet": {
        "from": Path("submodules/dotfiles/.zshrc_linux.tmpl"),
        "to": Path("includes/zshrc-files/zshrc-linux-snippet.zsh"),
    },
    "zshrc_macos": {
        "from": Path("submodules/dotfiles/.zshrc_darwin"),
        "to": Path("includes/zshrc-files/zshrc-macos.zsh"),
    },
    "zshrc_macos_snippet": {
        "from": Path("submodules/dotfiles/.zshrc_darwin"),
        "to": Path("includes/zshrc-files/zshrc-macos-snippet.zsh"),
    },
}

MKDOCS_SECTION_MARKER = {
    "user_config_start": "# --8<-- [start:user_config]",
    "user_config_end": "# --8<-- [end:user_config]",
    "ls_colors_start": "# --8<-- [start:ls_colors]",
    "ls_colors_end": "# --8<-- [end:ls_colors]",
}

CHEZMOI_STATEMENTS = ["{{ ", "{{- "]
