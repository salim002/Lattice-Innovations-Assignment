const express = require('express');
const multer = require('multer');
const controller = require('./controller');

const app = express();
const port = 8000;

app.use(express.json()); // Using JSON middleware to parse incoming request bodies

app.use('/', controller); // Using the controller middleware for handling routes

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
