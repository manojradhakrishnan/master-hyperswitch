#!/bin/bash

# Script to synchronize Hyperswitch repositories into the master repository
# This script clones all relevant Hyperswitch repositories and organizes them

set -e  # Exit on any error

echo "Syncing Hyperswitch repositories..."

# Create directories for each component
mkdir -p repositories

# Clone/Update repositories
echo "Cloning/Updating Hyperswitch repositories..."

# Hyperswitch Core
if [ -d "repositories/hyperswitch" ]; then
    echo "Updating Hyperswitch Core..."
    cd repositories/hyperswitch
    git pull origin main
    cd ../..
else
    echo "Cloning Hyperswitch Core..."
    git clone --depth 1 https://github.com/juspay/hyperswitch.git repositories/hyperswitch
fi

# Hyperswitch Control Center
if [ -d "repositories/hyperswitch-control-center" ]; then
    echo "Updating Hyperswitch Control Center..."
    cd repositories/hyperswitch-control-center
    git pull origin main
    cd ../..
else
    echo "Cloning Hyperswitch Control Center..."
    git clone --depth 1 https://github.com/juspay/hyperswitch-control-center.git repositories/hyperswitch-control-center
fi

# Hyperswitch Web SDK
if [ -d "repositories/hyperswitch-web" ]; then
    echo "Updating Hyperswitch Web SDK..."
    cd repositories/hyperswitch-web
    git pull origin main
    cd ../..
else
    echo "Cloning Hyperswitch Web SDK..."
    git clone --depth 1 https://github.com/juspay/hyperswitch-web.git repositories/hyperswitch-web
fi

# Hyperswitch Card Vault
if [ -d "repositories/hyperswitch-card-vault" ]; then
    echo "Updating Hyperswitch Card Vault..."
    cd repositories/hyperswitch-card-vault
    git pull origin main
    cd ../..
else
    echo "Cloning Hyperswitch Card Vault..."
    git clone --depth 1 https://github.com/juspay/hyperswitch-card-vault.git repositories/hyperswitch-card-vault
fi

# Hyperswitch Documentation
if [ -d "repositories/hyperswitch-docs" ]; then
    echo "Updating Hyperswitch Documentation..."
    cd repositories/hyperswitch-docs
    git pull origin main
    cd ../..
else
    echo "Cloning Hyperswitch Documentation..."
    git clone --depth 1 https://github.com/juspay/hyperswitch-docs.git repositories/hyperswitch-docs
fi

echo "All repositories have been synced successfully."
echo "Repository structure:"
find repositories -type d -maxdepth 2 | sort

echo ""
echo "To update the central index or DeepWiki, you can now process these repositories."

# Note: We're not committing any changes to the master repository automatically
# This is left for the user to decide what files to include

echo "Done." 