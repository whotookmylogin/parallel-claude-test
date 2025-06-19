// Basic Express server - to be expanded in parallel development
const express = require('express');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());

// Basic health check endpoint
app.get('/health', (req, res) => {
  res.json({ status: 'OK', message: 'Server is running' });
});

// TODO: Add todo endpoints (to be developed in backend branch)
// - GET /api/todos
// - POST /api/todos
// - PUT /api/todos/:id
// - DELETE /api/todos/:id

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

module.exports = app;