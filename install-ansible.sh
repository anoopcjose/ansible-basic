#!/bin/bash

# This script installs Ansible and ansible-lint on Ubuntu/Debian systems
# It performs actions only if needed and handles the PEP 668 (externally-managed) issue

set -e  # Exit on error

SEPARATOR="============================"

echo "Updating package index..."
sudo apt update -y

echo "$SEPARATOR"

# Check if software-properties-common is installed
if ! dpkg -s software-properties-common &>/dev/null; then
    echo "Installing software-properties-common..."
    sudo apt install -y software-properties-common
else
    echo "software-properties-common is already installed."
fi

echo "$SEPARATOR"

# Add Ansible PPA if it's not already added
if ! grep -q "^deb .*.ansible" /etc/apt/sources.list /etc/apt/sources.list.d/* 2>/dev/null; then
    echo "Adding Ansible PPA..."
    sudo add-apt-repository --yes --update ppa:ansible/ansible
else
    echo "Ansible PPA already added."
fi

echo "$SEPARATOR"

# Install Ansible if not already installed
if ! command -v ansible &>/dev/null; then
    echo "Installing Ansible..."
    sudo apt install -y ansible
else
    echo "Ansible is already installed."
fi

# Show Ansible version
echo "Ansible version:"
ansible --version

echo "$SEPARATOR"

# Install pip3 if not installed
if ! command -v pip3 &>/dev/null; then
    echo "Installing python3-pip..."
    sudo apt install -y python3-pip
else
    echo "pip3 is already installed."
fi

echo "$SEPARATOR"

# Ensure ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "Adding ~/.local/bin to PATH in ~/.bashrc..."
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    echo "~/.local/bin added to PATH and bashrc reloaded."
else
    echo "~/.local/bin is already in PATH."
fi

echo "$SEPARATOR"

# Try to install ansible-lint
echo "Checking if ansible-lint is installed..."
if ! pip3 show ansible-lint &>/dev/null; then
    echo "ansible-lint not found. Attempting to install..."

    if ! pip3 install ansible-lint --user; then
        echo "Initial pip install failed. Checking for externally managed environment..."

        PY_VERSION=$(python3 --version | awk '{print $2}')
        PY_MAJOR_MINOR=$(echo "$PY_VERSION" | cut -d. -f1,2)
        EXTERNALLY_MANAGED_PATH="/usr/lib/python$PY_MAJOR_MINOR/EXTERNALLY-MANAGED"

        if [ -f "$EXTERNALLY_MANAGED_PATH" ]; then
            echo "Externally managed environment detected at: $EXTERNALLY_MANAGED_PATH"
            echo "Removing EXTERNALLY-MANAGED file (requires sudo)..."
            sudo rm "$EXTERNALLY_MANAGED_PATH"

            echo "Retrying ansible-lint installation..."
            pip3 install ansible-lint --user
        else
            echo "EXTERNALLY-MANAGED file not found, but pip install still failed."
            exit 1
        fi
    else
        echo "ansible-lint installed successfully."
    fi
else
    echo "ansible-lint is already installed."
fi

echo "$SEPARATOR"
echo "Ansible installation is completed."
echo "$SEPARATOR"
