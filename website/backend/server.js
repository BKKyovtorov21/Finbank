// backend/server.js
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = 1234;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Create MySQL connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root', // replace with your MySQL username
    password: 'bobii4i4i', // replace with your MySQL password
    database: 'Finbank', // replace with your MySQL database name
});

// Connect to the database
db.connect(err => {
    if (err) {
        console.error('Database connection failed:', err.stack);
        return;
    }
    console.log('Connected to MySQL database');
});

// Update table endpoint
app.put('/api/update', (req, res) => {
    const { id, newValue } = req.body; // Expecting id and newValue in the request body
    res.status(200).json({ message: 'Record updated successfully' });
    const sql = 'UPDATE requestLinks SET moneySent = ? WHERE id = ?'; // replace with your table and column names
    db.query(sql, [newValue, id], (error, results) => {
        if (error) {
            return res.status(500).send(error);
        }
        res.status(200).json({ message: 'Record updated successfully', results });
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});