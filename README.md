### README for `extract-gresource.sh`

```markdown
# extract-gresource.sh

A shell script for extracting resources from a GResource file, which is typically used
 in applications built with GTK or GNOME. The script processes a GResource archive file
and extracts each resource into the corresponding directory structure.

## Table of Contents
- [Overview](#overview)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [License](#license)
- [Contact](#contact)

## Overview

The `extract-gresource.sh` script is designed to extract resources from a GResource
(a compiled set of resources, such as images or other assets, used in GTK
applications). This shell script takes a single GResource file as input, lists the
contained resources, and extracts each one into the appropriate directory structure.

The script checks for the following:
1. The file exists.
2. Only one argument is passed to the script.
3. It uses `gresource` commands to list and extract resources.

## Usage

### Step 1: Make the script executable
Ensure the script is executable by running the following command:

```bash
chmod +x extract-gresource.sh
```

### Step 2: Run the script
You can run the script by providing the path to a GResource file. The script will 
extract all the resources into the current directory.

```bash
./extract-gresource.sh /path/to/your.gresource
```

### Example

```bash
./extract-gresource.sh /home/user/app.gresource
```

The script will create directories based on the resource paths, extract each resource, 
and save it in the respective directory.

### Expected Output

1. **Directory Structure**: The script will create directories in the current working directory based on the paths found inside the GResource file.
2. **Extracted Resources**: The script extracts each resource as a file in the corresponding directory.

For example, if the GResource file contains the resource `/images/logo.png`, the script will create the directory `./images/` and save the file `logo.png` there.

### Errors

- If no arguments are provided or more than one argument is given, the script will print an error message and exit.
- If the provided file does not exist, the script will notify the user and exit.

## Dependencies

This script requires the `gresource` command-line tool, which is part of the GTK or GNOME 
development environment. You need to have GTK or GNOME development tools installed on your 
system to use this script.

## License

This script is licensed under the **MIT License**. Feel free to modify and redistribute it 
under the terms of the license.

## Contact

For questions, feedback, or suggestions, please reach out to the author:

- **Author**: Yahya Hamidaddin
- **Email**: [yhamidaddin@open-alt.com](mailto:yhamidaddin@open-alt.com)

```
