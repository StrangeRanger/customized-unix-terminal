from dataclasses import dataclass, field
from typing import Optional, Tuple


@dataclass
class Markers:
    """Dataclass to store markers for a given file.

    Attributes:
        _start_marker (str): The starting marker for the section.
        _end_marker (str): The ending marker for the section.
        _hard_coded_inclusion (Optional[Tuple[str, ...]]): Hard-coded lines to include
            in the section.
        is_within_section (bool): Whether the current line is within the section.
    """

    _start_marker: str = field(repr=False)
    _end_marker: str = field(repr=False)
    _hard_coded_inclusion: Optional[Tuple[str, ...]] = field(default=None, repr=False)
    is_within_section: bool = False

    @property
    def start_marker(self) -> str:
        return self._start_marker

    @property
    def end_marker(self) -> str:
        return self._end_marker

    @property
    def hard_coded_inclusion(self) -> Optional[Tuple[str, ...]]:
        return self._hard_coded_inclusion


NEOVIM_MARKERS = Markers(
    _start_marker='""""[ General Configurations ]',
    _end_marker='""""[ vim-plug Plugin Configurations ]',
)

ZSH_ALIAS_MARKERS = Markers(
    _start_marker="####[[ Aliases ]]",
    _end_marker="####[[ Environmental Variables ]]",
)

# NOTE: This is an "estimated" value, that relies on the position of comments and other
#   commands that may not always be present. Compared to the previous markers, this one
#   is more likely to be wrong, if the `.zshrc` related files are modified.
ZSH_LS_COLORS_MARKERS = Markers(
    _start_marker="# Modifies the colors",
    _end_marker="## Set default",
    _hard_coded_inclusion=(
        "# Set list-colors to enable filename colorizing.\n",
        "zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}\n",
    ),
)
