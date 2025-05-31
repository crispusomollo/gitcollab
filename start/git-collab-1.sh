#!/bin/bash

echo "🔄 Starting Git Collaboration Workflow"

# Step 1: Pull from main
echo "➡️  Switching to main and pulling latest changes..."
git checkout main
git pull origin main

# Step 2: Create new branch
read -p "📝 Enter your new branch name (e.g. feature/my-task): " branch
git checkout -b $branch
echo "✅ New branch '$branch' created."

# Step 3: Prompt to continue editing
read -p "⏳ Press [Enter] once you're done making changes to continue..."

# Step 4: Stage, commit, and push
git add .
read -p "📄 Enter your commit message: " msg
git commit -m "$msg"

git push -u origin $branch
echo "🚀 Pushed to GitHub: $branch"

# Optional: Show status and PR reminder
git status
echo "💡 Don't forget to create a Pull Request on GitHub!"
