#!/bin/bash

set -e

echo "⚠️  Uninstalling Git Collab Toolkit..."

for cmd in gitmenu gitcollab gitreview; do
  if [[ -f "/usr/local/bin/$cmd" ]]; then
    rm "/usr/local/bin/$cmd"
    echo "🗑️ Removed $cmd"
  else
    echo "⚠️ $cmd not found in /usr/local/bin"
  fi
done

echo "✅ Uninstalled successfully."

