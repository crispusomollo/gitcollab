#!/bin/bash

set -e

echo "🔧 Installing Git Collab Toolkit..."

for script in gitmenu.sh gitcollab.sh gitreview.sh; do
  install -m 755 "scripts/$script" "/usr/local/bin/${script%.sh}"
done

echo "✅ Installed successfully!"
echo "   Run 'gitmenu' to get started."

