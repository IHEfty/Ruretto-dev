# Termimage

The **Termimage** project is a part of the **1000+ Codes in Tender** collection. This project, written using the [**Tender**](https://github.com/2dprototype/tender-free) programming language, converts images to ASCII art and displays them in the terminal with optional color support.

## Requirements

To use this project, you need to install [**Tender**](https://github.com/2dprototype/tender-free). Clone and install Tender by following the instructions from the Tender GitHub repository:

```bash
git clone https://github.com/2dprototype/tender-free.git
cd tender-free
```

## Running the Project

Once you have Tender installed, you can run the project using `cli.td`. Here's how:

```bash
tender cli.td
```

This command will render the embedded image `download.jpg` as ASCII art in the terminal.

### Customizing the Image

To display a different image, replace `download.jpg` with the name of your own image file. Make sure the image is saved in the same folder as the script.

Example:

```tender
data := embed("your_image.jpg")
sysout t.to_ascii(data, 40, 30, true)
```

Feel free to modify the width, height, and color settings by adjusting the parameters in the script.

## Project Structure

- **termcolor.td**: Provides utilities for matching RGB values to ANSI color codes.
- **termimage.td**: Contains the logic for decoding an image and converting it to ASCII art.
- **cli.td**: The main script that processes and displays an embedded image.

## Contribution to 1000+ Codes

This project serves as one of the many examples within the **1000+ Codes in Tender** repository. Explore and experiment with different images and settings to deepen your understanding of image processing in Tender!

Enjoy experimenting with different images and settings!