require('./env')
const express = require('express');
const app = express();

app.get('/env', function (req, res) {
    console.log(process.env)
    res.send(process.env.NODE_ENV)
})
app.get('/', function (req, res) {
    res.send('Hello')
})
const port = 3000;
app.listen(port);
