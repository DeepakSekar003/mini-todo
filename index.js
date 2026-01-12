const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

// middleware
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));

// API (backend)
let todos = [];

app.get("/api/todos", (req, res) => {
  res.json(todos);
});

app.post("/api/todos", (req, res) => {
  todos.push(req.body.task);
  res.json({ message: "Todo added" });
});

// UI route
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "index.html"));
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
