# Parallel Agent Commands

## 🎨 UI Team Command (Terminal 1)
```bash
cd ~/Documents/DevOPs/ParallelClaudeTest-UI
claude-code
```

**Agent Prompt:**
```
I'm the UI specialist on a parallel development team. Read the PRD.md file and focus ONLY on the frontend React application. 

Your mission:
1. Set up a modern React + TypeScript + Vite + Tailwind CSS frontend
2. Build all the UI components listed in the PRD
3. Implement state management and API integration
4. Create a beautiful, responsive todo app interface
5. Use subagents if needed for specialized tasks (styling, accessibility, etc.)

Key constraints:
- Work ONLY on client/ directory files
- Follow the API contract specified in PRD.md
- Create reusable, well-typed components
- Implement proper loading states and error handling

Start by reading PRD.md, then set up the React project structure.
```

## 🔧 Backend Team Command (Terminal 2)
```bash
cd ~/Documents/DevOPs/ParallelClaudeTest-Backend
claude-code
```

**Agent Prompt:**
```
I'm the backend specialist on a parallel development team. Read the PRD.md file and focus ONLY on the API and database layer.

Your mission:
1. Set up Express + TypeScript + SQLite backend
2. Implement all API endpoints from the PRD specification
3. Create proper database schema and migrations
4. Add validation, error handling, and security middleware
5. Use subagents if needed for specialized tasks (database optimization, security, etc.)

Key constraints:
- Work ONLY on server/ directory files
- Follow the exact API contract in PRD.md (other teams depend on this!)
- Use proper TypeScript types that match the frontend
- Implement robust error handling and validation

Start by reading PRD.md, then set up the Express server structure.
```

## 🧪 Testing Team Command (Terminal 3)
```bash
cd ~/Documents/DevOPs/ParallelClaudeTest-Testing
claude-code
```

**Agent Prompt:**
```
I'm the testing specialist on a parallel development team. Read the PRD.md file and create comprehensive test coverage for the entire application.

Your mission:
1. Set up Jest, React Testing Library, and Supertest
2. Write unit tests for UI components (mock the API calls)
3. Write integration tests for API endpoints
4. Create E2E test scenarios
5. Use subagents if needed for specialized testing (performance, accessibility, security)

Key constraints:
- Work ONLY on tests/ directory and test configuration files
- Reference the API contract and component specs from PRD.md
- Achieve 90%+ code coverage
- Create reusable test utilities and mocks

Start by reading PRD.md, then set up the testing infrastructure.
```

## 📋 Coordination Commands

### For merging results (run in main repo):
```bash
cd ~/Documents/DevOPs/ParallelClaudeTest

# Pull UI changes
git remote add ui ../ParallelClaudeTest-UI
git fetch ui
git merge ui/feature/ui-components

# Pull Backend changes  
git remote add backend ../ParallelClaudeTest-Backend
git fetch backend
git merge backend/feature/backend-api

# Pull Testing changes
git remote add testing ../ParallelClaudeTest-Testing
git fetch testing
git merge testing/feature/testing
```

### For checking progress:
```bash
# Check what each team has committed
git --git-dir=../ParallelClaudeTest-UI/.git log --oneline
git --git-dir=../ParallelClaudeTest-Backend/.git log --oneline  
git --git-dir=../ParallelClaudeTest-Testing/.git log --oneline
```

## 🤖 Subagent Strategy

**Yes, each agent can use subagents!** Here's how:

### UI Team Subagents:
- **Styling Specialist**: Focus on Tailwind CSS and responsive design
- **Component Architect**: Design reusable component patterns
- **State Management Expert**: Implement context/store patterns
- **Accessibility Auditor**: Ensure WCAG compliance

### Backend Team Subagents:
- **Database Designer**: Optimize SQLite schema and queries
- **API Architect**: Design RESTful patterns and middleware
- **Security Specialist**: Implement validation and security headers
- **Performance Optimizer**: Add caching and rate limiting

### Testing Team Subagents:
- **Unit Test Writer**: Component and function testing
- **Integration Tester**: API and database testing  
- **E2E Specialist**: Full user journey testing
- **Performance Tester**: Load and stress testing

Each main agent can spawn these subagents using the Task tool for specialized work!