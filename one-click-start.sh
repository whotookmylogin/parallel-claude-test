#!/bin/bash

# 🎯 ULTIMATE ONE-CLICK PARALLEL CLAUDE STARTER
echo "🎯 ULTIMATE PARALLEL CLAUDE CODE STARTER"
echo "========================================"

# Function to launch Claude Code directly in terminal
launch_claude() {
    local path=$1
    local title=$2
    local instruction="Read AGENT_INSTRUCTIONS.md and start working!"
    
    osascript -e "
    tell application \"Terminal\"
        do script \"cd '$path' && claude-code --prompt '$instruction'\"
        set custom title of front window to \"$title Agent - Claude Code\"
    end tell
    "
}

echo "🚀 Launching 3 Claude Code instances in parallel..."
echo ""

# Launch all three agents simultaneously
launch_claude "$HOME/Documents/DevOPs/ParallelClaudeTest-UI" "UI"
launch_claude "$HOME/Documents/DevOPs/ParallelClaudeTest-Backend" "Backend"
launch_claude "$HOME/Documents/DevOPs/ParallelClaudeTest-Testing" "Testing"

echo "✅ All agents launched!"
echo ""
echo "🤖 Each agent will automatically:"
echo "   • Read their AGENT_INSTRUCTIONS.md"
echo "   • Read the PRD.md for specifications"
echo "   • Start building their assigned components"
echo "   • Use subagents for specialized tasks"
echo ""
echo "📊 Monitor progress: ./monitor-progress.sh"
echo "🔀 Merge results: ./merge-results.sh"
echo ""
echo "🎉 Your 10x→30x parallel development is now running!"