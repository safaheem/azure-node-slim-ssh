var express = require('express');
// Constants
var PORT = process.env.PORT || 3000;
var TEMP = process.env.TMP_PORTAL__CONNECT_URL;
// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello World from NodeJS docker, printing variable: ' + TEMP + '\n');
});

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);
