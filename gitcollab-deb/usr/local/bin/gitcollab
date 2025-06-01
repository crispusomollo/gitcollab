#!/bin/bash

GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RED="\033[1;31m"
RESET="\033[0m"

echo -e "${YELLOW}🌿 Starting new feature/task...${RESET}"

# Check gh CLI
if ! command -v gh &> /dev/null; then
  echo -e "${RED}❌ GitHub CLI (gh) is not installed.${RESET}"
  exit 1
fi

read -p "Enter task or feature name (e.g., auth-login): " TASK
read -p "Enter base branch to branch from (default: main): " BASE
BASE=${BASE:-main}

BRANCH="feature/$(whoami)-$TASK"

echo -e "${GREEN}✅ Creating branch: $BRANCH from $BASE${RESET}"
git checkout "$BASE" && git pull origin "$BASE"
git checkout -b "$BRANCH"

# Optional setup hook
echo -e "${YELLOW}🔧 Running setup hooks (if available)...${RESET}"
[[ -f package.json ]] && npm install
[[ -f Makefile ]] && make setup || true

git push --set-upstream origin "$BRANCH"

# Create draft PR
read -p "📬 Create draft pull request now? (y/n): " create_pr
if [[ "$create_pr" == "y" ]]; then
  gh pr create --title "$TASK" --body "Draft PR for $TASK" --base "$BASE" --head "$BRANCH" --draft
  echo -e "${GREEN}✅ Draft PR created!${RESET}"
else
  echo -e "${YELLOW}⚠️ PR creation skipped.${RESET}"
fi


