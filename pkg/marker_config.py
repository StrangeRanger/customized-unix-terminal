from dataclasses import dataclass


@dataclass
class Markers:
    """Dataclass to store markers for a given file.

    Attributes:
        start_marker (str): The starting marker for the section.
        end_marker (str): The ending marker for the section.
        is_within_section (bool): Whether the current line is within the section.
    """

    start_marker: str
    end_marker: str
    is_within_section: bool = False


NEOVIM_MARKERS = Markers(
    start_marker='""""[ General Configurations ]',
    end_marker='""""[ vim-plug Plugin Configurations ]',
)

ZSH_ALIAS_MARKERS = Markers(
    start_marker="####[[ Aliases ]]",
    end_marker="####[[ Environmental Variables ]]",
)

# NOTE: This is an estimated value, that relies on the position of comments that may not
#       always be present. Compared to the previous markers, this one is more likely to
#       be wrong, if the `.zshrc` file is modified.
ZSH_LS_COLORS_MARKERS = Markers(
    start_marker="# Modifies the colors",
    end_marker="## Set default",
)
