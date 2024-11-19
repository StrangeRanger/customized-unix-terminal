from dataclasses import dataclass
from typing import Optional, Tuple


@dataclass
class Markers:
    """Dataclass to store markers for a given file.

    Attributes:
        start_marker (str): The starting marker for the section.
        end_marker (str): The ending marker for the section.
        hard_coded_inclusion (Optional[Tuple[str, ...]]): Hard-coded lines to include
            in the section.
        is_within_section (bool): Whether the current line is within the section.
    """

    start_marker: str
    end_marker: str
    hard_coded_inclusion: Optional[Tuple[str, ...]] = None
    is_within_section: bool = False
