# Chess-DOS-VirtualMachine Linux Installer

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Welcome to the Chess-DOS-VirtualMachine Linux Installer! This enhanced script complements the original Chess-DOS-VirtualMachine collection, providing a robust and user-friendly installation process for Linux users. The original collection, which includes only Windows installation files, is hosted on [Franz Huber's Program Projects](https://fhub.jimdofree.com/).

*Version: 2.0.0 | Last Updated: September 30, 2025*

## Features

- **Automated Installation:** Checks for necessary dependencies and installs DOSBox-X if not already present.
- **Script Creation:** Generates `DOSBox-X.sh` and `Chess-VM.sh` scripts for easy launching.
- **Command-line Options:** Support for help, verbose output, and force reinstall options.

## Prerequisites

- A Linux distribution with the APT package manager. Tested on Ubuntu 20.04, 22.04, and 24.04
- Internet connection for downloading dependencies.
- `Chess-DOS-VM_Collection.zip` file downloaded from Franz Huber's website and stored in the same directory with the installer.

## Installation

### Quick Install

1. **Download the latest release:**
    ```bash
    curl -L -O https://github.com/harry-symeonidis/chess/releases/latest/download/install-Chess-VM.sh
    ```
   
   Or download the latest script directly:
    ```bash
    curl -O https://raw.githubusercontent.com/harry-symeonidis/chess/refs/heads/main/install-Chess-VM.sh
    ```

2. **Make the script executable:**
    ```bash
    chmod +x install-Chess-VM.sh
    ```

3. **Run the script:**
    ```bash
    ./install-Chess-VM.sh
    ```

### Advanced Installation Options

The installer supports additional options:

```bash
# Show help and available options
./install-Chess-VM.sh --help

# Verbose installation with detailed output
./install-Chess-VM.sh --verbose

# Force reinstallation (useful for updates)
./install-Chess-VM.sh --force
```

## Usage

- **To start the Chess-DOS-VM:**
    ```bash
    ./Chess-VM.sh
    ```

- **In DOSBox-X:**
    - Type `chess` to bring up the chess menu.
    - Type `exit` to quit DOSBox-X.

## Troubleshooting

If you encounter any issues, please check the following:

1. **Missing ZIP file:**
   - Ensure `Chess-DOS-VM_Collection.zip` is in the same directory as the script
   - Download it from [Franz Huber's website](https://fhub.jimdofree.com/)

2. **Installation failures:**
   - Check your internet connection
   - Run with `--verbose` for detailed output

3. **Permission issues:**
   - Ensure the script is executable: `chmod +x install-Chess-VM.sh`
   - You may need sudo privileges for DOSBox-X installation

## Resources

- **Chess-DOS-VirtualMachine Linux Installer:** [Harry Symeonidis' repo on GitHub](https://github.com/harry-symeonidis/chess)
- **Download Chess-DOS-VirtualMachine:** [Franz Huber's Program Projects](https://fhub.jimdofree.com/)
- [ScanChess](https://scanchess.com) - Free chess OCR: turn a board photo or screenshot into editable FEN and handwritten scoresheets into PGN, then analyze in the browser.

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue to discuss improvements.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more details.

---

Happy playing, and may you become the next super GM! If you have any questions or need assistance, don't hesitate to reach out.

Best wishes,
Harry
