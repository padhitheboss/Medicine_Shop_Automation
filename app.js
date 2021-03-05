require('dotenv').config();
const http = require('http');
const express = require("express");
const mysql =  require("mysql");
const db = require(__dirname + '/connect.js');
const app =  express();
const bodyParser = require('body-parser');
const hostname = process.env.HOST;
const port = process.env.PORT;

// const db = mysql.createConnection({
// 	host: "192.168.0.5",
// 	user: "subham",
// 	password: "Padhi123*",
// 	database : "med_mgmnt"
// });

app.use('/static', express.static(__dirname + '/public'));
app.use(express.json());
app.use(express.urlencoded({
  extended: false
}));

// db.connect(function(err) {
// 	if (err) throw err;
// 	console.log("Connected!");
// });

// app.get("/login",(req,res) => {
// 	res.sendFile(__dirname + '/public/login.html');
// });
// app.get('/login.css', function(req, res) {
// 	res.sendFile(__dirname + '/public/login.css');
//   });

app.use('/',require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

app.listen(port,hostname, () => {
	console.log(`Server running at http://${hostname}:${port}/`);
  });