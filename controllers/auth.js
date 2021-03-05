const mysql = require('mysql');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('../connect.js');
exports.login = (req,res) => {
    const{ email, password } = req.body;
     console.log(email);
     console.log(password);
    if (email && password) {
		db.query('SELECT * FROM users WHERE email = ? AND password = ?', [email, password], (err, results) => {
            if (err) throw err;
            else{
                if (results.length > 0) {
                    results = JSON.stringify(results);
                    //req.session.loggedin = true;
                    //req.session.email = email;
                    console.log("Loggedin successfully");
                    console.log(results);
                    console.log(results.name);
                    if(results.grp == 'doc'){
                        res.redirect('/doctor');
                    }else if(results.grp == 'shop'){
                        res.redirect('/shopkeeper');
                    }else if(results.grp == 'cust'){
                        res.redirect('/customer');
                    }else if(results.grp == 'sup'){
                        res.redirect('/supplier');
                    }
                } else {
                    res.send('Incorrect Username and/or Password!');
                }			
                res.end();
            }
		});
	} else {
		res.send('Please enter Username and Password!');
		res.end();
	}
    //res.send("Login Form Submitted");
}
exports.register = (req,res) => {
    const{ name, email, password, confpassword, address, number, group } = req.body;
    console.log(req.body);
    db.query('SELECT * FROM users WHERE email = ?'[email], async (err,results) =>{
        if(err) throw err;
        if(results.length > 0){
            return res.send("This Email is Already In Use");
        }else if(password !== confpassword ){
            res.send("Password don't Match");
        }
        let hashedPassword = await bcrypt.hash(password, 8);
        console.log(hashedPassword);
        
    });

    console.log(password);
    console.log(confpassword);
    res.send("Register Form Submitted");
}