#!/bin/bash

echo "🧹 Removing GitCollab Tools..."

sudo rm -f /usr/local/bin/gitmenu
sudo rm -f /usr/local/bin/git-collab
sudo rm -f /usr/local/bin/git-review

sudo dpkg -r gitcollab-tools 2>/dev/null

echo "✅ GitCollab Tools uninstalled."
