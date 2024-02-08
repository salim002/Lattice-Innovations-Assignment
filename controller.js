const express = require('express');
const router = express.Router();
const db = require('./db');
const multer = require('multer');

const upload = multer({ dest: 'uploads/' });

router.post('/addPatient', upload.single('photo'), async (req, res) => {
    try {
        const { name, address, email, phone, password, psychiatrist_id } = req.body;
        const photoFilename = req.file ? req.file.filename : null;

        if (!name || !address || !email || !password || !psychiatrist_id) { 
            return res.status(400).json({ message: 'All fields including psychiatrist_id are required' });
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            return res.status(400).json({ message: 'Invalid email address.' });
        }

        if (!password || password.length < 8 || password.length > 15) {
            return res.status(400).json({ message: 'Password must be 8-15 characters long.' });
        }

        if (!/[a-z]/.test(password)) {
            return res.status(400).json({ message: 'Password must contain at least one lowercase letter.' });
        }

        if (!/[A-Z]/.test(password)) {
            return res.status(400).json({ message: 'Password must contain at least one uppercase letter.' });
        }

        if (!/\d/.test(password)) {
            return res.status(400).json({ message: 'Password must contain at least one number.' });
        }

        const [result] = await db.query('INSERT INTO Patients (patient_name, patient_address, patient_email, patient_phone, patient_password, patient_photo, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)', 
            [name, address, email, phone, password, photoFilename, psychiatrist_id]);

        res.status(201).json({ message: 'Patient added successfully.', patientId: result.insertId });
    } catch (error) {
        console.error('Error adding patient:', error);
        res.status(500).json({ message: 'Internal server error.' });
    }
});



module.exports = router;