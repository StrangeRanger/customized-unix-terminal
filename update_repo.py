#!/usr/bin/env python3
"""
Automates the process of updating zsh and neovim configuration files in the 'includes'
directory. This is done by reading my 'dotfiles' in the 'submodules/dotfiles' submodule
and applying the necessary changes to the 'includes' directory.

NOTE: This script does not require the initialization of a virtual environment. The
      Pipfiles are only required when deploying the MkDocs site.
"""
# [ Imports ]###########################################################################

from utils.config import (
    CHEZMOI_STATEMENTS,
    MKDOCS_SECTION_MARKER,
    NEOVIM_FILE_PATH_DICT,
    ZSH_FILE_PATH_DICT,
)
from utils.file_utils import read_file, write_file
from utils.marker_config import NEOVIM_MARKERS, ZSH_ALIAS_MARKERS, ZSH_LS_COLORS_MARKERS

# [ Functions ]#########################################################################


def neovim_config():
    """Updates the neovim configurations files."""
    for file_operation, file_paths in NEOVIM_FILE_PATH_DICT.items():
        data = read_file(
            file_paths["from"], read_lines=(file_operation == "init_vim_no_plug")
        )

        if file_operation == "init_vim_no_plug":
            filtered_data = []
            for line in data:
                if NEOVIM_MARKERS.start_marker in line:
                    NEOVIM_MARKERS.is_within_section = True
                if (
                    NEOVIM_MARKERS.end_marker in line
                    and NEOVIM_MARKERS.is_within_section
                ):
                    NEOVIM_MARKERS.is_within_section = False
                    break
                if NEOVIM_MARKERS.is_within_section:
                    filtered_data.append(line)
            write_file(file_paths["to"], "".join(filtered_data))
        else:
            write_file(file_paths["to"], data)

def chezmoi_edge_case(line, data, line_number):
    """Handles edge cases when chezmoi statements are encountered. These are hard coded
    strings that need to be processed in a very specific way. This means that changes to
    the configuration files can easily break negate the functionality of this function.
    Keep a close eye when making changes to the configuration files.

    Args:
        line (str): The line to process.
        data (list[str]): The data from the file.
        line_number (int): The current line number.

    Returns:
        int: The number of lines to skip.
    """
    if "{{ if $data.isGUIEnvironment -}}" in line:
        if "plugins=(" in data[line_number + 1] and "plugins=(" in data[line_number + 2]:
            return 3
        elif "hash xdg-open" in data[line_number + 1] and "{{- end }}" in data[line_number + 2]:
            return 1
    return 1


def zsh_config():
    """Updates the zsh configurations files."""
    for file_operation, file_paths in ZSH_FILE_PATH_DICT.items():
        data: list[str] = read_file(file_paths["from"], read_lines=True)
        output_data: list[str] = []
        line_number = 0

        while line_number < len(data):
            line = data[line_number]

            # Uncomment the code below to help debug edge cases.
            #print(f"Processing line {line_number + 1} of {file_paths['from']}")
            #print(f"Line: {line}")

            if any(marker in line for marker in CHEZMOI_STATEMENTS):
                skip_line = chezmoi_edge_case(line, data, line_number)
                line_number += skip_line
                continue

            if not file_operation.endswith("snippet"):
                output_data.append(line)
                line_number += 1
                continue

            if ZSH_ALIAS_MARKERS.start_marker in line:
                ZSH_ALIAS_MARKERS.is_within_section = True
                output_data.append(MKDOCS_SECTION_MARKER["user_config_start"] + "\n")
            elif ZSH_LS_COLORS_MARKERS.start_marker in line:
                ZSH_LS_COLORS_MARKERS.is_within_section = True
                output_data.append(MKDOCS_SECTION_MARKER["ls_colors_start"] + "\n")

            if (
                ZSH_ALIAS_MARKERS.end_marker in line
                and ZSH_ALIAS_MARKERS.is_within_section
            ):
                ZSH_ALIAS_MARKERS.is_within_section = False
                output_data.append(MKDOCS_SECTION_MARKER["user_config_end"] + "\n")
            elif (
                ZSH_LS_COLORS_MARKERS.end_marker in line
                and ZSH_LS_COLORS_MARKERS.is_within_section
            ):
                ZSH_LS_COLORS_MARKERS.is_within_section = False
                output_data.append(MKDOCS_SECTION_MARKER["ls_colors_end"] + "\n")

            if (
                ZSH_ALIAS_MARKERS.is_within_section
                or ZSH_LS_COLORS_MARKERS.is_within_section
            ):
                output_data.append(line)

            line_number += 1

        write_file(file_paths["to"], "".join(output_data))


def main():
    """Main function."""
    neovim_config()
    zsh_config()


# [ Dunder Main ]#######################################################################

if __name__ == "__main__":
    main()
