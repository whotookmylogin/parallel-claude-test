# Product Requirements Document: Parallel Todo App

## Overview
Build a modern, full-stack Todo application to test parallel Claude Code development across UI, Backend, and Testing teams.

## Technical Stack
- **Frontend**: React 18, TypeScript, Tailwind CSS, Vite
- **Backend**: Node.js, Express, TypeScript, SQLite with better-sqlite3
- **Testing**: Jest, React Testing Library, Supertest
- **Build**: Vite for frontend, tsc for backend

## Core Features

### 1. Todo Management
- ✅ Create new todos with title and description
- ✅ Mark todos as complete/incomplete
- ✅ Edit existing todos
- ✅ Delete todos
- ✅ Filter todos (all, active, completed)
- ✅ Search todos by title/description

### 2. User Experience
- ✅ Responsive design (mobile-first)
- ✅ Real-time updates
- ✅ Keyboard shortcuts (Enter to add, Escape to cancel)
- ✅ Loading states and error handling
- ✅ Local storage persistence + API sync

### 3. Data Persistence
- ✅ SQLite database with proper schema
- ✅ RESTful API endpoints
- ✅ Data validation and error handling
- ✅ API rate limiting and security headers

## API Specification

### Endpoints
```
GET    /api/todos           # Get all todos
POST   /api/todos           # Create new todo
GET    /api/todos/:id       # Get specific todo
PUT    /api/todos/:id       # Update todo
DELETE /api/todos/:id       # Delete todo
GET    /api/health          # Health check
```

### Data Models
```typescript
interface Todo {
  id: number;
  title: string;
  description?: string;
  completed: boolean;
  createdAt: string;
  updatedAt: string;
}

interface CreateTodoRequest {
  title: string;
  description?: string;
}

interface UpdateTodoRequest {
  title?: string;
  description?: string;
  completed?: boolean;
}
```

## Team Responsibilities

### 🎨 UI Team (ParallelClaudeTest-UI)
**Focus**: Frontend React application with modern UX

**Deliverables**:
- React components with TypeScript
- Tailwind CSS styling
- State management (Context API or Zustand)
- Form validation and error handling
- Responsive design
- Keyboard shortcuts
- Loading states

**Key Files**:
- `client/src/components/TodoApp.tsx`
- `client/src/components/TodoList.tsx`
- `client/src/components/TodoItem.tsx`
- `client/src/components/TodoForm.tsx`
- `client/src/hooks/useTodos.ts`
- `client/src/api/todoApi.ts`

### 🔧 Backend Team (ParallelClaudeTest-Backend)
**Focus**: RESTful API with database integration

**Deliverables**:
- Express server with TypeScript
- SQLite database setup
- CRUD operations
- Input validation
- Error handling middleware
- CORS configuration
- Database migrations

**Key Files**:
- `server/src/index.ts`
- `server/src/routes/todos.ts`
- `server/src/models/Todo.ts`
- `server/src/database/schema.sql`
- `server/src/middleware/validation.ts`
- `server/src/middleware/errorHandler.ts`

### 🧪 Testing Team (ParallelClaudeTest-Testing)
**Focus**: Comprehensive test coverage

**Deliverables**:
- Unit tests for components
- API integration tests
- E2E test scenarios
- Test utilities and mocks
- CI/CD test pipeline
- Performance tests

**Key Files**:
- `tests/unit/components/`
- `tests/integration/api/`
- `tests/e2e/todo.spec.ts`
- `tests/utils/testHelpers.ts`
- `tests/mocks/`
- `jest.config.js`

## Success Criteria
- ✅ All API endpoints working with proper error handling
- ✅ Responsive UI with smooth interactions
- ✅ 90%+ test coverage across frontend and backend
- ✅ Sub-second response times for all operations
- ✅ Zero critical accessibility violations
- ✅ Successful parallel development with minimal merge conflicts

## Coordination Guidelines
1. **API Contract**: Backend team defines API first, UI team implements against it
2. **Shared Types**: Use common TypeScript interfaces across teams
3. **Database Schema**: Backend team owns, others reference
4. **Component Props**: UI team defines, Testing team validates
5. **Error Handling**: Consistent error format across API and UI