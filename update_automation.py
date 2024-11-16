#!/usr/bin/env python3
"""
...
"""
# [ Imports ]###########################################################################

from pkg.config import (CHEZMOI_STATEMENTS, MKDOCS_SECTION_MARKER,
                        NEOVIM_FILE_PATH_DICT, ZSH_FILE_PATH_DICT)
from pkg.file_utils import read_file, write_file
from pkg.marker_config import (NEOVIM_MARKERS, ZSH_ALIAS_MARKERS,
                               ZSH_LS_COLORS_MARKERS)

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


def zsh_config():
    """Updates the zsh configurations files."""
    for file_operation, file_paths in ZSH_FILE_PATH_DICT.items():
        data = read_file(file_paths["from"], read_lines=True)
        output_data = []

        for line in data:
            if any(marker in line for marker in CHEZMOI_STATEMENTS):
                continue

            if not file_operation.endswith("snippet"):
                output_data.append(line)
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

        write_file(file_paths["to"], "".join(output_data))


def main():
    """Main function."""
    neovim_config()
    zsh_config()


# [ Dunder Main ]#######################################################################

if __name__ == "__main__":
    main()
