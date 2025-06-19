#!/bin/bash

# 🚀 One-Click Parallel Claude Code Launcher
echo "🚀 Starting Parallel Claude Code Development..."
echo "Opening 3 terminals with Claude Code agents..."

# Function to open terminal and run command
open_terminal() {
    local path=$1
    local title=$2
    
    osascript -e "
    tell application \"Terminal\"
        do script \"cd '$path' && echo '🤖 $title Agent Ready!' && echo 'Type: claude-code' && echo 'Then say: Read AGENT_INSTRUCTIONS.md and start working!'\"
        set custom title of front window to \"$title Agent\"
    end tell
    "
}

# Open terminals for each agent
open_terminal "$HOME/Documents/DevOPs/ParallelClaudeTest-UI" "UI"
open_terminal "$HOME/Documents/DevOPs/ParallelClaudeTest-Backend" "Backend" 
open_terminal "$HOME/Documents/DevOPs/ParallelClaudeTest-Testing" "Testing"

echo "✅ Three terminals opened!"
echo "🎯 In each terminal:"
echo "   1. Type: claude-code"
echo "   2. Say: 'Read AGENT_INSTRUCTIONS.md and start working!'"
echo ""
echo "📊 Monitor progress with: ./monitor-progress.sh"