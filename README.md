# Kite Text Editor

Kite is a simple text editor written in C. This project is designed to be lightweight and easy to use. Follow the instructions below to build, install, and run Kite on your system.

## Features
- Lightweight and fast
- Simple interface
- Cross-platform support (Linux, macOS, Windows)

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:

- A C compiler (gcc recommended)
- make utility
- (For Windows) MinGW or a similar environment

### Installation

First, clone the repository:
$ git clone https://github.com/yourusername/kite-text-editor.git
$ cd kite-text-editor

### Build the Text Editor
On Linux/macOS
Compile the text editor by running:

$ make

### On Windows
Ensure you have MinGW or a similar environment installed. Compile the text editor by running:

$ make

### Install the Text Editor Globally(Linux/macOS)
Run the following command to install the text editor globally:

$ sudo make install

### On Windows
Run the following command to install the text editor globally:

$ make install

This will copy the 'kite' binary to the appropriate directory and make it executable from anywhere.


### Uninstall the Text Editor(Linux/macOS)
To uninstall the text editor, run:

$ sudo make uninstall

### On Windows
To uninstall the text editor, run:

$ make uninstall

### Clean the Build
To clean the build directory, run:

$ make clean


### Usage
After installation, you can run the text editor from anywhere:

On Linux/macOS

$ kite

On Windows

$ kite.exe


## Acknowledgments
Thanks to the open-source community for providing tools and inspiration.


