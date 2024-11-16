from pathlib import Path


def read_file(file_path, read_lines = False):
    """Reads the file and returns the data.

    Args:
        file_path (Path): The path to the file.
        read_lines (bool, optional): Whether to read the file line by line. Defaults to
            False.

    Returns:
        list[str] | str: The data from the file.
    """
    with open(file_path, "r") as file:
        return file.readlines() if read_lines else file.read()


def write_file(file_path, data):
    """Writes the data to the file.

    Args:
        file_path (Path): The path to the file.
        data (str): The data to write.
    """
    with open(file_path, "w") as file:
        file.write(data)
