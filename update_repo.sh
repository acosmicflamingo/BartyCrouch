#!/bin/sh

set -e

version="4.5.0.1"

# First delete original tag
git push --delete origin ${version}
git tag -d ${version}

# Create tag and push 
git tag ${version}
git push origin --tags

# Push main branch for good measure
git push -f origin main

# Get SHA that will be pasted to brew configuration file
git_sha=`git rev-parse HEAD`
echo $git_sha
read -n 1 -s -r -p "After copying the latest git commit SHA, press any key to continue"

# Add new SHA to brew configuration file
brew edit bartycrouch

# Rebuild and install newest bartycrouch binary from current source
rm -rf /Users/aguzmanballen/Library/Caches/Homebrew/bartycrouch--git
brew reinstall bartycrouch --build-from-source
