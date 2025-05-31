#!/bin/bash

echo "Git Collaboration Workflow Script"

# Pull latest changes from main
echo "Pulling latest changes from main..."

git checkout main
git pull origin main

# Ask for a branch name
read -p "Enter your new branch name (e.g. feature/my-update): " branch

git checkout -b $branch

echo "Branch '$branch' created. You can now start editing files."
