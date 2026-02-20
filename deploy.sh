#!/bin/bash
# deploy.sh - Deploy Cyber Command Center to GitHub Pages with custom domain
# Run this on your local machine after setting up Git credentials

echo "🚀 Cyber Command Center Deployment"
echo "=================================="
echo ""

# Colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if git is configured
if [ -z "$(git config --global user.email)" ]; then
    echo -e "${RED}⚠️  Git not configured!${NC}"
    echo "Run: git config --global user.email \"your@email.com\""
    echo "Run: git config --global user.name \"Your Name\""
    exit 1
fi

echo -e "${CYAN}Step 1/4:${NC} Checking remote..."
if ! git remote | grep -q "origin"; then
    git remote add origin https://github.com/R1shabh-Arora/cyber-command-center.git
    echo "✅ Remote added"
else
    echo "✅ Remote already configured"
fi

echo ""
echo -e "${CYAN}Step 2/4:${NC} Pushing to GitHub..."
if git push -u origin master; then
    echo "✅ Code pushed successfully!"
else
    echo -e "${RED}⚠️  Push failed${NC}"
    echo "You may need to:"
    echo "  1. Create the repo at https://github.com/new"
    echo "  2. Set up Git credentials (SSH key or Personal Access Token)"
    echo "  3. Run this script again"
    exit 1
fi

echo ""
echo -e "${CYAN}Step 3/4:${NC} Verifying CNAME..."
if [ -f "CNAME" ]; then
    echo "✅ CNAME file present: $(cat CNAME)"
else
    echo "ops.rishabh.uk" > CNAME
    git add CNAME
    git commit -m "Add CNAME for custom domain"
    git push
    echo "✅ CNAME created and pushed"
fi

echo ""
echo -e "${GREEN}==================================${NC}"
echo -e "${GREEN}✅ Deployment Complete!${NC}"
echo -e "${GREEN}==================================${NC}"
echo ""
echo "Next steps:"
echo ""
echo "1. Enable GitHub Pages:"
echo "   → https://github.com/R1shabh-Arora/cyber-command-center/settings/pages"
echo "   → Source: Deploy from a branch"
echo "   → Branch: master / (root)"
echo "   → Click 'Save'"
echo ""
echo "2. Configure DNS for ops.rishabh.uk:"
echo "   Add a CNAME record:"
echo "   ┌─────────────┬───────┬──────────────────────────┐"
echo "   │ Type        │ Name  │ Value                    │"
echo "   ├─────────────┼───────┼──────────────────────────┤"
echo "   │ CNAME       │ ops   │ R1shabh-Arora.github.io  │"
echo "   └─────────────┴───────┴──────────────────────────┘"
echo ""
echo "3. Enable HTTPS (in GitHub Pages settings)"
echo ""
echo "4. Wait 2-5 minutes for DNS + SSL to propagate"
echo ""
echo -e "${CYAN}Your site will be live at:${NC}"
echo "  → https://ops.rishabh.uk (custom domain)"
echo "  → https://R1shabh-Arora.github.io/cyber-command-center (fallback)"
echo ""
echo -e "${GREEN}🥀 Black Rose out.${NC}"
