const express = require('express');
const multer = require('multer');
const pool = require('./db');
const controller = require('./controller');

const app = express();
const port = 3000;

app.use(express.json());
const upload = multer({ dest: 'uploads/' });

app.use('/', controller);

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
