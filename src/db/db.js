const mysql = require("mysql2/promise")
require("dotenv").config();

const { DB_HOST, USER, DB_NAME, DB_PASSWORD } = process.env;

const Pool = mysql.createPool({
    host: DB_HOST,
    user: USER,
    database: DB_NAME,
    password: DB_PASSWORD, 
});

module.exports = Pool