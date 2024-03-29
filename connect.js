var mysql = require('mysql');
require('dotenv').config();
var db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database : process.env.DB_NAME
});

db.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
module.exports = db; 