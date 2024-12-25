# Chess-DOS-VirtualMachine Installer

Welcome to the Chess-DOS-VirtualMachine Linux Installer! This script complements the original Chess-DOS-VirtualMachine collection, providing a seamless installation process for Linux users. The original collection, which includes only Windows installation files, is hosted on [Franz Huber's Program Projects](https://fhub.jimdofree.com/). This installer ensures that retro computer chess programs are accessible to Linux users as well.

*Last Updated: 25th December, 2024*

## Features

- **Automated Installation:** Checks for necessary dependencies and installs DOSBox-X if not already present.
- **Script Creation:** Generates `DOSBox-X.sh` and `Chess-VM.sh` scripts for easy launching.

## Prerequisites

- A Linux distribution with the APT package manager. Tested on Ubuntu 24.04.1 LTS (Noble Numbat)
- Internet connection for downloading dependencies.
- `Chess-DOS-VM_Collection.zip` file downloaded from Franz Huber's website and stored in the same directory with the installer.

## Installation

1. **Download the script:**
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
- Ensure the `Chess-DOS-VM_Collection.zip` file is in the same directory as the script.
- Verify your internet connection if the installation fails.

## Resources

- **Chess-DOS-VirtualMachine Linux Installer:** [Harry Symeonidis' repo on GitHub](https://github.com/harry-symeonidis/chess)
- **Download Chess-DOS-VirtualMachine:** [Franz Huber's Program Projects](https://fhub.jimdofree.com/)

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue to discuss improvements.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more details.

---

Happy playing, and may you become the next super GM! If you have any questions or need assistance, don't hesitate to reach out.

Best wishes,
Harry