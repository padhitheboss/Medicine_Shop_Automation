const mysql = require('mysql');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('../connect.js');
exports.login = async (req, res) => {
    const { email, password } = req.body;
    console.log(email);
    console.log(password);
    if (email && password) {
        db.query('SELECT * FROM users WHERE email = ?', [email], async (err, results) => {
            console.log(results);
            if (!results || !(await bcrypt.compare(password, results[0].password))) {
                res.send("Email or Password is incorrect");
            }
            else {
                const id = results[0].id;
                const token = jwt.sign({ id: id }, process.env.JWT_SECRET, {
                    expiresIn: process.env.JWT_EXPIRES_IN
                });
                console.log("The Token is:" + token);
                const cookieOptions = {
                    expires: new Date(
                        Date.now() + process.env.JWT_COOKIE_EXPIRES * 24 * 60 * 60 * 1000
                    ),
                    httpOnly: true
                }
                res.cookie('jwt', token, cookieOptions);
                // res.status(200).redirect("/");
                res.send("User logged in!");
            }
        });
    } else {
        res.send('Please enter Username and Password!');
        res.end();
    }
    //res.send("Login Form Submitted");
}
exports.register = (req, res) => {
    const { name, email, password, confpassword, address, number, group } = req.body;
    console.log(req.body);
    db.query('SELECT * FROM users WHERE email = ?', [email], async (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
            return res.send("This Email is Already In Use");
        } else if (password !== confpassword) {
            res.send("Password don't Match");
        }
        let hashedPassword = await bcrypt.hash(password, 8);
        // console.log(hashedPassword);

        db.query('insert into users SET ?', { name: name, email: email, password: hashedPassword, address: address, phone_no: number, grp: group }, (err, results) => {
            if (err) throw err;
            else {
                res.send("User Registered");
            }
        });
    });

    console.log(password);
    console.log(confpassword);
    //res.send("Register Form Submitted");
}