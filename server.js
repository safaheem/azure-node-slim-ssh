var express = require('express');

// Constants
var PORT = process.env.PORT || 3001;

// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello World from NodeJS '\n');
});

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);
