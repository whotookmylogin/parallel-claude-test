#!/bin/bash

# 🔀 Automatic Results Merger for Parallel Development
echo "🔀 Merging Parallel Development Results..."

cd "$HOME/Documents/DevOPs/ParallelClaudeTest"

# Add remotes if they don't exist
git remote remove ui 2>/dev/null
git remote remove backend 2>/dev/null  
git remote remove testing 2>/dev/null

git remote add ui ../ParallelClaudeTest-UI
git remote add backend ../ParallelClaudeTest-Backend
git remote add testing ../ParallelClaudeTest-Testing

echo "📡 Fetching latest changes from all teams..."
git fetch ui
git fetch backend
git fetch testing

echo ""
echo "🎨 UI Team Changes:"
git log ui/feature/ui-components --oneline -5 2>/dev/null || echo "  No changes"

echo ""
echo "🔧 Backend Team Changes:"
git log backend/feature/backend-api --oneline -5 2>/dev/null || echo "  No changes"

echo ""
echo "🧪 Testing Team Changes:"
git log testing/feature/testing --oneline -5 2>/dev/null || echo "  No changes"

echo ""
echo "🤔 Ready to merge? This will attempt to merge all branches..."
read -p "Continue? (y/n): " confirm

if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    echo ""
    echo "🔀 Merging UI changes..."
    if git merge ui/feature/ui-components --no-edit; then
        echo "✅ UI merge successful"
    else
        echo "❌ UI merge failed - resolve conflicts manually"
        exit 1
    fi
    
    echo ""
    echo "🔀 Merging Backend changes..."
    if git merge backend/feature/backend-api --no-edit; then
        echo "✅ Backend merge successful"
    else
        echo "❌ Backend merge failed - resolve conflicts manually"
        exit 1
    fi
    
    echo ""
    echo "🔀 Merging Testing changes..."
    if git merge testing/feature/testing --no-edit; then
        echo "✅ Testing merge successful"
    else
        echo "❌ Testing merge failed - resolve conflicts manually"
        exit 1
    fi
    
    echo ""
    echo "🎉 All merges successful!"
    echo "📊 Final project structure:"
    tree -L 3 -I node_modules 2>/dev/null || find . -type d -not -path '*/.*' -not -path '*/node_modules*' | head -20
    
else
    echo "❌ Merge cancelled"
fi