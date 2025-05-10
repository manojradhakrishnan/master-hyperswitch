#!/bin/bash

# Script to update DeepWiki indexing for all Hyperswitch repositories
# This script assumes you have already run sync-repos.sh

set -e  # Exit on any error

echo "Updating DeepWiki index for Hyperswitch repositories..."

# Check if repositories directory exists
if [ ! -d "repositories" ]; then
    echo "Error: repositories directory not found."
    echo "Please run ./sync-repos.sh first to clone all repositories."
    exit 1
fi

# Check if all repositories exist
REPOS=(
    "hyperswitch"
    "hyperswitch-control-center"
    "hyperswitch-web"
    "hyperswitch-card-vault"
    "hyperswitch-docs"
)

for repo in "${REPOS[@]}"; do
    if [ ! -d "repositories/$repo" ]; then
        echo "Error: repository $repo not found."
        echo "Please run ./sync-repos.sh to ensure all repositories are cloned."
        exit 1
    fi
done

echo "All repositories found. Ready to update DeepWiki index."

# Here you would add code to trigger your DeepWiki indexing process
# This could be an API call, a command-line tool, or another script

# Example placeholder for DeepWiki indexing (replace with actual implementation)
echo "Placeholder: Triggering DeepWiki indexing for the following repositories:"
for repo in "${REPOS[@]}"; do
    echo "- $repo"
    # deepwiki-cli index --repo="repositories/$repo" --url="https://github.com/juspay/$repo"
done

echo ""
echo "Note: The actual DeepWiki indexing commands need to be implemented"
echo "based on your specific DeepWiki setup and API."
echo ""
echo "Once indexed, developers can use the DeepWiki to query and understand"
echo "the Hyperswitch ecosystem holistically."

echo "Done." 