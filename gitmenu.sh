#!/bin/bash

while true; do
  echo ""
  echo "=============================="
  echo "🚀 GIT COLLABORATION MENU"
  echo "=============================="
  echo "1️. Start New Feature / Task (gitcollab)"
  echo "2️. Review & Merge Pull Requests (gitreview)"
  echo "3️. Git Utilities (status, pull, fetch)"
  echo "4️. Branch Management (switch/delete)"
  echo "5️. Exit"
  echo "------------------------------"
  read -p "👉 Choose an option [1-5]: " choice

  case $choice in
    1)
      ~/git-collab.sh
      ;;
    2)
      ~/git-review.sh
      ;;
    3)
      echo ""
      echo "🔧 Git Utilities"
      echo "-----------------"
      echo "Current branch: $(git branch --show-current)"
      echo ""
      echo "📄 Git Status:"
      git status
      echo ""
      read -p "🔄 Pull from origin? (y/n): " pull_confirm
      if [[ "$pull_confirm" == "y" ]]; then
        git pull
      fi

      read -p "🔃 Fetch from origin? (y/n): " fetch_confirm
      if [[ "$fetch_confirm" == "y" ]]; then
        git fetch
      fi
      ;;
    4)
      echo ""
      echo "🌿 Branch Management"
      echo "------------------------"
      git branch
      echo ""
      read -p "🔀 Switch to branch (enter name or leave blank to skip): " target_branch
      if [[ ! -z "$target_branch" ]]; then
        git checkout "$target_branch"
      fi

      read -p "🗑️  Delete a local branch? (y/n): " del_confirm
      if [[ "$del_confirm" == "y" ]]; then
        read -p "Enter branch name to delete: " del_branch
        git branch -d "$del_branch"
      fi
      ;;
    5)
      echo "👋 Exiting Git Menu. Happy coding!"
      break
      ;;
    *)
      echo "❗ Invalid option. Please enter a number between 1 and 5."
      ;;
  esac
done
