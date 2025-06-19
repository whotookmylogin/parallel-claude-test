#!/bin/bash

# 📊 Real-time Progress Monitor for Parallel Development
echo "📊 Monitoring Parallel Claude Code Progress..."
echo "Press Ctrl+C to exit"
echo ""

while true; do
    clear
    echo "🚀 PARALLEL CLAUDE CODE PROGRESS MONITOR"
    echo "========================================"
    echo ""
    
    echo "🎨 UI TEAM (feature/ui-components):"
    if [ -d "$HOME/Documents/DevOPs/ParallelClaudeTest-UI/.git" ]; then
        cd "$HOME/Documents/DevOPs/ParallelClaudeTest-UI"
        git log --oneline -3 --color=always 2>/dev/null || echo "  No commits yet"
        echo "  Files changed: $(git diff --name-only HEAD~1..HEAD 2>/dev/null | wc -l | xargs)"
    else
        echo "  Repository not found"
    fi
    echo ""
    
    echo "🔧 BACKEND TEAM (feature/backend-api):"
    if [ -d "$HOME/Documents/DevOPs/ParallelClaudeTest-Backend/.git" ]; then
        cd "$HOME/Documents/DevOPs/ParallelClaudeTest-Backend"
        git log --oneline -3 --color=always 2>/dev/null || echo "  No commits yet"
        echo "  Files changed: $(git diff --name-only HEAD~1..HEAD 2>/dev/null | wc -l | xargs)"
    else
        echo "  Repository not found"
    fi
    echo ""
    
    echo "🧪 TESTING TEAM (feature/testing):"
    if [ -d "$HOME/Documents/DevOPs/ParallelClaudeTest-Testing/.git" ]; then
        cd "$HOME/Documents/DevOPs/ParallelClaudeTest-Testing"
        git log --oneline -3 --color=always 2>/dev/null || echo "  No commits yet"
        echo "  Files changed: $(git diff --name-only HEAD~1..HEAD 2>/dev/null | wc -l | xargs)"
    else
        echo "  Repository not found"
    fi
    echo ""
    
    echo "⏱️  Updated: $(date '+%H:%M:%S')"
    echo "🔄 Auto-refreshing every 10 seconds..."
    
    sleep 10
done