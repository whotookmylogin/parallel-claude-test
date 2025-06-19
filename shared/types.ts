// Shared TypeScript types for parallel development coordination
// This file should be referenced by all teams to ensure type consistency

export interface Todo {
  id: number;
  title: string;
  description?: string;
  completed: boolean;
  createdAt: string;
  updatedAt: string;
}

export interface CreateTodoRequest {
  title: string;
  description?: string;
}

export interface UpdateTodoRequest {
  title?: string;
  description?: string;
  completed?: boolean;
}

export interface TodoApiResponse {
  success: boolean;
  data?: Todo | Todo[];
  error?: string;
  message?: string;
}

export interface TodoFilter {
  status: 'all' | 'active' | 'completed';
  search?: string;
}

export interface TodoStats {
  total: number;
  completed: number;
  active: number;
}

// Error types for consistent error handling
export interface ApiError {
  status: number;
  message: string;
  code?: string;
  details?: any;
}

// Component prop types for UI team
export interface TodoItemProps {
  todo: Todo;
  onToggle: (id: number) => void;
  onEdit: (id: number, updates: UpdateTodoRequest) => void;
  onDelete: (id: number) => void;
}

export interface TodoFormProps {
  onSubmit: (todo: CreateTodoRequest) => void;
  isLoading?: boolean;
}

export interface TodoListProps {
  todos: Todo[];
  filter: TodoFilter;
  onToggle: (id: number) => void;
  onEdit: (id: number, updates: UpdateTodoRequest) => void;
  onDelete: (id: number) => void;
}