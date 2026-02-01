#!/bin/bash
# XecureNet Installer
# GitHub: https://github.com/asimaicoder/XecureNet
# Raw URL: https://raw.githubusercontent.com/asimaicoder/XecureNet/main/install.sh
# CDN URL: https://cdn.jsdelivr.net/gh/asimaicoder/XecureNet@main/install.sh
# Usage: curl -fsSL https://raw.githubusercontent.com/asimaicoder/XecureNet/main/install.sh | sudo bash

set -e

REPO_URL="https://raw.githubusercontent.com/asimaicoder/XecureNet/main"
INSTALL_DIR="/usr/local/bin"
CONFIG_DIR="$HOME/.xecurenet"

echo "🔐 Installing XecureNet..."

# Download main script
sudo curl -fsSL "$REPO_URL/xecurenet" -o "$INSTALL_DIR/xecurenet"
sudo chmod +x "$INSTALL_DIR/xecurenet"

# Create config directory
mkdir -p "$CONFIG_DIR"

echo "✅ XecureNet installed!"
echo ""
echo "Run: xecurenet setup"
