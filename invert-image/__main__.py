from pathlib import Path
from typing import Optional

import click
from PIL import Image, ImageOps


@click.command()
@click.argument("filepath", type=click.Path(exists=True))
@click.option("-d", "--out-dir", "output_dir", type=click.Path(), default=None)
@click.option("-o", "--out-file", "output_filename", type=str, default=None)
def main(
    filepath: str, output_dir: Optional[str], output_filename: Optional[str]
) -> None:
    filepath = Path(filepath)
    output_dir: Path = Path.cwd() if output_dir is None else Path(output_dir)
    output_filename: Path = output_filename or f"{filepath.stem}-inverted.jpg"

    if not output_dir.exists():
        Path(output_dir).mkdir()

    output_filepath = (
        output_filename
        if output_dir is None
        else Path.joinpath(output_dir, output_filename)
    )

    image = Image.open(filepath)
    inverted = ImageOps.invert(image)
    inverted.save(output_filepath)


if __name__ == "__main__":
    main()
