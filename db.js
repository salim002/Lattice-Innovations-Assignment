const mysql = require('mysql2/promise'); // Importing the mysql2 module for MySQL database operations
const dotenv = require('dotenv'); // Importing dotenv for environment variable management

dotenv.config(); // Loading environment variables from .env file into process.env

// Creating a database connection pool
const pool = mysql.createPool({
    host: process.env.DB_HOST, // Database host
    user: process.env.DB_USER, // Database user
    password: process.env.DB_PASSWORD, // Database password
    database: 'hospitalDB', // Database name
    waitForConnections: true, // Whether the pool should automatically reconnect or not
    connectionLimit: 10, // Maximum number of connections in the pool
    queueLimit: 0 // Maximum number of connection requests the pool can queue
});

module.exports = pool;
