#!/bin/bash
# Deploy script for Cyber Command Center
# Run this to push to GitHub and enable GitHub Pages

echo "🚀 Deploying Cyber Command Center..."
echo ""

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo "Adding GitHub remote..."
    git remote add origin https://github.com/R1shabh-Arora/cyber-command-center.git
fi

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin master

echo ""
echo "✅ Code pushed successfully!"
echo ""
echo "Next steps:"
echo "1. Go to https://github.com/R1shabh-Arora/cyber-command-center/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Select 'master' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo "5. Wait 2-3 minutes for deployment"
echo ""
echo "Your site will be live at:"
echo "  - https://R1shabh-Arora.github.io/cyber-command-center"
echo "  - https://ops.rishabharora.dev (once DNS is configured)"
echo ""
echo "🥀 Black Rose out."
