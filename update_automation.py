#!/usr/bin/env python3
"""
...
"""
# [ Imports ]###########################################################################

from pathlib import Path

# [ Global Variables ]##################################################################

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

# [ Functions ]#########################################################################


def neovim_config():
    """Updates the neovim configurations files."""
    # Define the start and end markers.
    start_marker = '""""[ General Configurations ]'
    end_marker = '""""[ vim-plug Plugin Configurations ]'
    is_within_section = False

    for file_operation, file_paths in NEOVIM_FILE_PATH_DICT.items():
        if file_operation != "init_vim_no_plug":
            with open(file_paths["from"], "r") as file:
                data = file.read()  # .read to read the whole file
            with open(file_paths["to"], "w") as file:
                file.write(data)
        else:
            with open(file_paths["from"], "r") as file:
                data = file.readlines()  # .readlines to read the file line by line
            with open(file_paths["to"], "w") as file:
                for line in data:
                    if start_marker in line:
                        is_within_section = True
                    if end_marker in line:
                        is_within_section = False
                        break
                    if is_within_section:
                        file.write(line)

def zsh_config():
    """Updates the zsh configurations files."""
    chezmoi_statements = ["{{ ", "{{- "]
    mkdocs_section_marker = {
        "user_config_start": "# --8<-- [start:user_config]",
        "user_config_end": "# --8<-- [end:user_config]",
        "ls_colors_start": "# --8<-- [start:ls_colors]",
        "ls_colors_end": "# --8<-- [end:ls_colors]",
    }


    for file_operation, file_paths in ZSH_FILE_PATH_DICT.items():
        if file_operation.endswith("_snippet"):
            print("Snippet file.")
            # with open(file_paths["from"], "r") as file:
            #     # We read line by line if there is a need to exclude some lines, otherwise we read the whole file.
            #     data = file.readlines() #if file_paths["from"].name.endswith("tmpl") else file.read()
            # with open(file_paths["to"], "w") as file:
            #     if file_paths["from"].name.endswith("tmpl"):
            #         for line in data:
            #             if any(marker in line for marker in chezmoi_statements):
            #                 continue
            #     else:
            #         file.write("PINGAS")
            #         # for line in data:
            #         #     # These are lines used by Chezmoi to indicate a statement of sorts.
            #         #     if any(marker in line for marker in chezmoi_statements):
            #         #         continue
        # TODO: Make sure the plugins duplicate problem gets taken care of!
        else:
            with open(file_paths["from"], "r") as file:
                # We read line by line if there is a need to exclude some lines, otherwise we read the whole file.
                data = file.readlines() if file_paths["from"].name.endswith("tmpl") else file.read()
            with open(file_paths["to"], "w") as file:
                if file_paths["from"].name.endswith("tmpl"):
                    for line in data:
                        # Skip the lines that are marked by chezmoi_statements.
                        if any(marker in line for marker in chezmoi_statements):
                            continue
                        file.write(line)
                else:
                    file.write(data)

def main():
    #neovim_config()
    zsh_config()


# [ Dunder Main ]#######################################################################

if __name__ == "__main__":
    main()
