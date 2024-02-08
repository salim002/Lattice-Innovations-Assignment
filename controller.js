const express = require('express');
const router = express.Router();
const fs = require('fs');
const path = require('path');
const uuid = require('uuid');
const db = require('./db');
const multer = require('multer');

const upload = multer({ dest: 'uploads/' });

router.post('/addPatient', upload.single('photo'), async (req, res) => {
    try {
        const { name, address, email, phone, password, psychiatrist_id } = req.body;
        let photoFilename = null;
        if (req.file) {
            const photoUniqueFilename = uuid.v4() + path.extname(req.file.originalname);
            const photoFilePath = path.join(__dirname, 'uploads', photoUniqueFilename);
            fs.renameSync(req.file.path, photoFilePath);
            photoFilename = photoUniqueFilename;
        }

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



router.get('/hospital/:hospitalId', async (req, res) => {
    try {
        const hospitalId = req.params.hospitalId;

        const [hospitalData] = await db.query('SELECT hospital_name FROM Hospitals WHERE hospital_id = ?', [hospitalId]);
        if (hospitalData.length === 0) {
            return res.status(404).json({ message: 'Hospital not found.' });
        }
        const hospitalName = hospitalData[0].hospital_name;

        const [psychiatristCountData] = await db.query('SELECT COUNT(*) AS psychiatrist_count FROM Psychiatrists WHERE hospital_id = ?', [hospitalId]);
        const psychiatristCount = psychiatristCountData[0].psychiatrist_count;

        const [patientCountData] = await db.query('SELECT COUNT(*) AS patient_count FROM Patients p JOIN Psychiatrists psy ON p.psychiatrist_id = psy.psychiatrist_id WHERE psy.hospital_id = ?', [hospitalId]);
        const patientCount = patientCountData[0].patient_count;

        const [psychiatristsData] = await db.query('SELECT psy.psychiatrist_id, psy.psychiatrist_name, COUNT(p.patient_id) AS patients_count FROM Psychiatrists psy LEFT JOIN Patients p ON psy.psychiatrist_id = p.psychiatrist_id WHERE psy.hospital_id = ? GROUP BY psy.psychiatrist_id', [hospitalId]);

        const psychiatristDetails = psychiatristsData.map(psychiatrist => ({
            id: psychiatrist.psychiatrist_id,
            name: psychiatrist.psychiatrist_name,
            patients_count: psychiatrist.patients_count
        }));

        const responseData = {
            hospital_name: hospitalName,
            psychiatrist_count: psychiatristCount,
            patient_count: patientCount,
            psychiatrist_details: psychiatristDetails
        };

        res.status(200).json(responseData);
    } catch (error) {
        console.error('Error fetching hospital data:', error);
        res.status(500).json({ message: 'Internal server error.' });
    }
});


module.exports = router;