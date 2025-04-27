#!/bin/bash

# Define colors
green='\033[0;32m'
red='\033[0;31m'
reset='\033[0m'

# Update package list
sudo apt update

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${red}Git is not installed, installing now...${reset}"
    sudo apt install git -y
else
    echo -e "${green}Git is already installed, skipping installation.${reset}"
fi

# Clone the latest repository
if [ -d "$HOME/port" ]; then
    echo -e "${green}Repository already exists, pulling the latest changes...${reset}"
    cd "$HOME/port" && git pull origin main
else
    echo -e "${green}Cloning the repository...${reset}"
    git clone https://github.com/devbro7/port "$HOME/port"
fi

# Make sure we are in the correct directory
cd "$HOME/port" || { echo -e "${red}Failed to access ~/port directory!${reset}"; exit 1; }

# Ensure the 'port' file exists and is executable
if [ -f "$HOME/port/port" ]; then
    chmod +x "$HOME/port/port"
else
    echo -e "${red}Error: The 'port' file does not exist in ~/port.${reset}"
    exit 1
fi

# Remove old 'port' if it exists
if [ -f /usr/local/bin/port ]; then
    echo -e "${green}Old 'port' executable found in /usr/local/bin, replacing it...${reset}"
    sudo rm /usr/local/bin/port
fi

# Move the new 'port' to /usr/local/bin
sudo mv "$HOME/port/port" /usr/local/bin/port

# Set permissions
sudo chmod 755 /usr/local/bin/port

# Clean up
rm -rf "$HOME/port"

# Clear the terminal and show completion message
clear
echo -e "${green}Installation complete!${reset} Use ${green}port help${reset} to get started."
