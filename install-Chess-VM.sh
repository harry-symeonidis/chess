#!/bin/bash

WHITE='\033[1;37m'
ORANGE='\033[38;5;214m'
BRIGHT_WHITE='\033[0;97m'
BRIGHT_GREEN='\033[0;92m'
CYAN='\033[0;36m' # Define Cyan color
NC='\033[0m'

command_exists() {
    command -v "$1" > /dev/null 2>&1
}

# Create DOSBox-X.sh
create_dosbox_script() {
    cat << 'EOF' > DOSBox-X.sh
#!/bin/bash
clear
cd Chess-DOS-VM/dosbox-x
dosbox-x -conf "./dosbox-x.conf"
clear
cd ../..
EOF
    chmod +x DOSBox-X.sh  # The script must be executable
}

# Create Chess-VM.sh script
create_chess_vm_script() {
    cat << 'EOF' > Chess-VM.sh
#!/bin/bash
./DOSBox-X.sh
EOF
    chmod +x Chess-VM.sh
}

strip_ansi() {
    echo -e "$1" | sed -e 's/\x1B\[[0-9;]*[mK]//g'
}

boxed_message() {
    local length=78  # Adjusted length for top border line
    local border=""
    for ((i=0; i<length+6; i++)); do
        border="${border}═"
    done
    echo -e "${WHITE}╔${border}╗${NC}"

    # Add header lines
    echo -e "${WHITE}║  ${WHITE}Chess-DOS-VM Linux installation - find latest version:                            ║${NC}"
    echo -e "${WHITE}║  ${CYAN}https://github.com/harry-symeonidis/chess ${NC}                                        ║${NC}"

    echo -e "${WHITE}║  ${WHITE}Make sure the .ZIP file has been downloaded from:                                 ║${NC}"
    echo -e "${WHITE}║  ${CYAN}https://fhub.jimdofree.com/ ${NC}                                                      ║${NC}"

}

update_boxed_message() {
    local raw_message="$1"
    local message=$(strip_ansi "$raw_message")
    local length=80  # Adjusted length for inside lines
    local padded_message=$(printf "%-${length}s" "$message")
    printf "${WHITE}║  %s  ║${NC}\n" "$(echo -e "${raw_message//${message}/${padded_message}}")"
}

finish_boxed_message() {
    local length=78  # Adjusted length for bottom border
    local border=""
    for ((i=0; i<length+6; i++)); do
        border="${border}═"
    done
    echo -e "${WHITE}╚${border}╝${NC}"
}

messages=(
  "${ORANGE}Checking if DOSBox-X is installed...${NC}"
  "${ORANGE}Decompressing Chess-DOS-VM_Collection.zip...${NC}"
  "${ORANGE}Installing DOSBox-X...${NC}"
  "${ORANGE}Creating DOSBox-X.sh...${NC}"
  "${ORANGE}Finalizing installation...${NC}"
  "${BRIGHT_GREEN}Installation complete. To become the next super GM, run ${BRIGHT_WHITE}./Chess-VM.sh           ${NC}"
  "${BRIGHT_GREEN}In DOSBox-X, type ${BRIGHT_WHITE}chess${BRIGHT_GREEN} to bring up the menu or ${BRIGHT_WHITE}exit${BRIGHT_GREEN} to quit.                   ${NC}"
)

boxed_message 

# Check for DOSBox-X before decompressing
update_boxed_message "${messages[0]}"

# Check if Chess-DOS-VM_Collection.zip exists
if [ -f Chess-DOS-VM_Collection.zip ]; then
  unzip -qq Chess-DOS-VM_Collection.zip
  # Update message after decompression
  update_boxed_message "${messages[1]}"
else
  update_boxed_message "${messages[1]}"
  finish_boxed_message
  echo "Please visit https://fhub.jimdofree.com/ to download Chess-DOS-VirtualMachine and place the ZIP file in the same directory as this script."
  exit 1
fi

# DOSBox-X installation
if ! command_exists dosbox-x; then
  update_boxed_message "${messages[2]}"
  sudo apt update > /dev/null 2>&1
  sudo apt install -y dosbox-x > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    update_boxed_message "${ORANGE}Error: Failed to install DOSBox-X.${NC}"
    finish_boxed_message
    echo "Installation failed. Please check your internet connection and try again."
    exit 1
  fi
else
  update_boxed_message "${messages[3]}"
fi

# Create DOSBox-X.sh
if [ ! -f DOSBox-X.sh ]; then
  create_dosbox_script
  update_boxed_message "${messages[4]}"
else
  update_boxed_message "${messages[4]}"
fi

# Create Chess-VM.sh
create_chess_vm_script

update_boxed_message "${messages[5]}"
update_boxed_message "${messages[6]}"
finish_boxed_message
