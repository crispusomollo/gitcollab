#!/bin/bash

set -e

INSTALL_DIR="/usr/local/gittool"
BIN_LINK="/usr/local/bin/gitmenu"

echo "📁 Creating install directory at $INSTALL_DIR"
sudo mkdir -p "$INSTALL_DIR"

echo "📂 Copying scripts to $INSTALL_DIR"
sudo cp gitmenu.sh gitcollab.sh gitreview.sh "$INSTALL_DIR"
sudo chmod +x "$INSTALL_DIR/"*.sh

echo "🔗 Creating symlink at $BIN_LINK"
sudo ln -sf "$INSTALL_DIR/gitmenu.sh" "$BIN_LINK"
sudo chmod +x "$BIN_LINK"

echo "✅ Installation complete!"
echo "🚀 Run the tool by typing: gitmenu"

