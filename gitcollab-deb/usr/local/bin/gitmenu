#!/bin/bash

# Colors
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
RED="\033[1;31m"
RESET="\033[0m"

# Get directory for sourcing relative scripts
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

while true; do
  echo -e "\n${CYAN}=============================="
  echo "🚀 GIT COLLABORATION MENU"
  echo -e "==============================${RESET}"
  echo -e "${YELLOW}1. Start New Feature / Task (gitcollab)"
  echo "2. Review & Merge Pull Requests (gitreview)"
  echo "3. Git Utilities (status, pull, fetch)"
  echo "4. Branch Management (switch/delete)"
  echo -e "5. Exit${RESET}"
  echo "------------------------------"
  read -p "👉 Choose an option [1-5]: " choice

  case $choice in
    1) "$DIR/gitcollab.sh" ;;
    2) "$DIR/gitreview.sh" ;;
    3)
      echo -e "\n${CYAN}🔧 Git Utilities${RESET}"
      echo "-----------------"
      echo "Current branch: $(git branch --show-current)"
      echo ""
      git status
      echo ""
      read -p "🔄 Pull from origin? (y/n): " pull_confirm
      [[ "$pull_confirm" == "y" ]] && git pull
      read -p "🔃 Fetch from origin? (y/n): " fetch_confirm
      [[ "$fetch_confirm" == "y" ]] && git fetch
      ;;
    4)
      echo -e "\n${CYAN}🌿 Branch Management${RESET}"
      git branch
      echo ""
      read -p "🔀 Switch to branch (name): " target_branch
      [[ -n "$target_branch" ]] && git checkout "$target_branch"

      read -p "🗑️  Delete a local branch? (y/n): " del_confirm
      if [[ "$del_confirm" == "y" ]]; then
        read -p "Enter branch name to delete: " del_branch
        git branch -d "$del_branch"
      fi
      ;;
    5)
      echo -e "${GREEN}👋 Exiting Git Menu. Happy coding!${RESET}"
      break
      ;;
    *)
      echo -e "${RED}❗ Invalid option. Try 1–5.${RESET}"
      ;;
  esac
done

