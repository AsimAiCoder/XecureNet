#!/bin/bash
# XecureNet Installer v2.0.0
# GitHub: https://github.com/asimaicoder/XecureNet
# Usage: curl -fsSL https://raw.githubusercontent.com/asimaicoder/XecureNet/main/install.sh | sudo bash
# License: MIT

set -eo pipefail

REPO_URL="https://raw.githubusercontent.com/asimaicoder/XecureNet/main/xecurenet"
INSTALL_PATH="/usr/local/bin/xecurenet"

# --- Root check (FIX: was missing entirely) ---
if [[ $EUID -ne 0 ]]; then
  echo "Error: Run with sudo: curl ... | sudo bash  OR  sudo bash install.sh"
  exit 1
fi

# --- Dependency check (FIX: curl was used but never verified) ---
if ! command -v curl &>/dev/null; then
  echo "Error: curl is required. Install with: apt install -y curl"
  exit 1
fi

echo "Installing XecureNet..."

# --- Download to temp file first (FIX: avoids broken pipe-to-exec) ---
TMP_FILE=$(mktemp /tmp/xecurenet-install-XXXXXX)
trap "rm -f '$TMP_FILE'" EXIT

if ! curl -fsSL --retry 3 --retry-delay 2 "$REPO_URL" -o "$TMP_FILE"; then
  echo "Error: Download failed. Check internet connection."
  exit 1
fi

# Verify non-empty download
if [[ ! -s "$TMP_FILE" ]]; then
  echo "Error: Downloaded file is empty."
  exit 1
fi

# Install
mv "$TMP_FILE" "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

# --- Create config directory for real user (FIX: $HOME was /root under sudo) ---
if [[ -n "${SUDO_USER:-}" ]]; then
  REAL_HOME=$(getent passwd "$SUDO_USER" | cut -d: -f6)
  CONFIG_DIR="$REAL_HOME/.xecurenet"
  mkdir -p "$CONFIG_DIR"
  chown "$SUDO_USER:$(id -gn "$SUDO_USER")" "$CONFIG_DIR"
else
  mkdir -p "$HOME/.xecurenet"
fi

echo ""
echo "XecureNet installed successfully!"
echo ""
echo "  Version : $("$INSTALL_PATH" --version 2>/dev/null | head -1 || echo 'installed')"
echo "  Path    : $INSTALL_PATH"
echo ""
echo "  Get started:"
echo "    sudo xecurenet deploy    # Deploy services interactively"
echo "    sudo xecurenet scan      # Scan your VM specs"
echo "    xecurenet --help         # Show all commands"
echo ""
