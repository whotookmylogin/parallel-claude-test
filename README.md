# Parallel Claude Code Test

This is a test project to experiment with running multiple Claude Code instances in parallel on different branches.

## The Experiment

1. **Branch Strategy**: Create multiple feature branches
2. **Parallel Development**: Run Claude Code instances simultaneously on different branches  
3. **Coordination**: Merge results while managing conflicts

## Branches

- `main` - Base branch
- `feature/ui-components` - UI development
- `feature/backend-api` - Backend development  
- `feature/testing` - Test suite development

## Sample Project

Let's build a simple Todo App to test parallel development:

- Frontend: React components
- Backend: Node.js/Express API
- Database: SQLite
- Tests: Jest

## Getting Started

```bash
# Clone this repo multiple times for parallel work
git clone . ../parallel-instance-1
git clone . ../parallel-instance-2
git clone . ../parallel-instance-3

# Each instance works on different branches
cd ../parallel-instance-1 && git checkout -b feature/ui-components
cd ../parallel-instance-2 && git checkout -b feature/backend-api
cd ../parallel-instance-3 && git checkout -b feature/testing
```