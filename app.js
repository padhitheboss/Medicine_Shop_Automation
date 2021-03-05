require('dotenv').config();
const http = require('http');
const express = require("express");
const path = require('path');
const ejsMate = require('ejs-mate');
const mysql =  require("mysql");
const db = require(__dirname + '/connect.js');
const app =  express();
const bodyParser = require('body-parser');

app.engine('ejs', ejsMate);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')))
app.use(express.json());
app.use(express.urlencoded({extended: false}));

app.get('/', (req, res) => {
  res.render('home')
});

app.use('/auth', require('./routes/auth'));

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Serving on port ${port}`)
})