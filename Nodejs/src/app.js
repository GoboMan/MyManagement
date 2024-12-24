const express = require('express');
const routes = require('./routes');
const app = express();

app.use(express.json()); // JSONリクエストのパース
app.use('/api', routes); // APIルートを登録

module.exports = app;

