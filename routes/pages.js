const express = require('express');
//const public = require('../public');
require('dotenv').config();
const localroot = process.env.LOCALROOT;
const router = express.Router();

router.get('/login',(req,res) =>{
    res.sendFile(localroot + '/public/login.html');
});
router.get('/login.css', (req, res) =>{
    res.sendFile(localroot + '/public/login.css');
});
module.exports = router;