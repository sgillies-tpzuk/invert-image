from PIL import Image, ImageOps


def main() -> None:
    image = Image.open("mountains.jpg")
    inverted = ImageOps.invert(image)
    inverted.save("mountains-inverted.jpg")


if __name__ == "__main__":
    main()
