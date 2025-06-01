#!/bin/bash

GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
RED="\033[1;31m"
RESET="\033[0m"

echo -e "\n${CYAN}🔍 Reviewing Pull Requests...${RESET}"

# Check gh CLI
if ! command -v gh &> /dev/null; then
  echo -e "${RED}❌ GitHub CLI not installed.${RESET}"
  exit 1
fi

echo -e "${YELLOW}📋 Open PRs:${RESET}"
gh pr list --limit 10

read -p "🔢 Enter PR number or branch name to checkout: " pr_id
if [[ -z "$pr_id" ]]; then
  echo -e "${RED}❌ No input given. Aborting.${RESET}"
  exit 1
fi

echo -e "${YELLOW}🔄 Checking out PR: $pr_id...${RESET}"
gh pr checkout "$pr_id"

# Optionally run tests
read -p "🧪 Run tests? (y/n): " test_confirm
if [[ "$test_confirm" == "y" ]]; then
  [[ -f package.json ]] && npm test
  [[ -f Makefile ]] && make test || true
fi

# Offer to merge
read -p "✅ Merge PR now? (y/n): " merge_confirm
if [[ "$merge_confirm" == "y" ]]; then
  gh pr merge --squash --delete-branch
  echo -e "${GREEN}✅ PR merged and branch deleted.${RESET}"
else
  echo -e "${CYAN}ℹ️ PR checkout complete. No merge performed.${RESET}"
fi


