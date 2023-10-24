# Invert Image

This is a simple app that takes an image URI and outputs an identical image with the colours inverted.

## CLI Usage

```
poetry shell  # or create the virtual environment from requirements.txt file
python -m invert-image --help` for CLI options.
```

## Docker Usage

```
docker build -t invert-image .
docker run invert-image --help
```

Note that to pass and retrieve images to and from the container you will need to bind volumes to the appropriate file/directories.

## Common Workflow Language Usage

`cwl-runner image-inverter.cwl --file <image_uri> --out <output_file>`
