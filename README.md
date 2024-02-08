<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lattice Innovations Assignments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 20px;
            font-weight: bold;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 10px;
        }

        ul {
            margin-bottom: 20px;
        }

        li {
            margin-bottom: 5px;
        }

        a {
            color: #0366d6;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <h1>Lattice Innovations Assignments</h1>
    <p>This project is built using Node.js and MySQL. It provides API endpoints to manage hospitals, psychiatrists, and patients.</p>

    <h2>Libraries/Frameworks Used:</h2>
    <ul>
        <li><strong>Express:</strong> Used as the web application framework to handle routing and middleware.</li>
        <li><strong>Multer:</strong> Utilized for handling file uploads in the application.</li>
        <li><strong>MySQL2:</strong> Used to connect and interact with the MySQL database.</li>
        <li><strong>UUID:</strong> Utilized to generate unique identifiers for file uploads.</li>
        <li><strong>Dotenv:</strong> Used for loading environment variables from a .env file.</li>
    </ul>

    <h2>API Endpoints:</h2>
    <h3>Add Patient</h3>
    <p><strong>Endpoint:</strong> POST /addPatient</p>
    <p><strong>Description:</strong> Endpoint to add a new patient to the system.</p>
    <p><strong>Parameters:</strong></p>
    <ul>
        <li>name: Patient's name</li>
        <li>address: Patient's address</li>
        <li>email: Patient's email address</li>
        <li>phone: Patient's phone number</li>
        <li>password: Patient's password</li>
        <li>photo: Patient's photo (optional)</li>
        <li>psychiatrist_id: ID of the psychiatrist treating the patient</li>
    </ul>
    <p><strong>Response:</strong> Returns a success message along with the patient ID if the patient is successfully added.</p>

    <h3>Get Hospital Information</h3>
    <p><strong>Endpoint:</strong> GET /hospital/:hospitalId</p>
    <p><strong>Description:</strong> Endpoint to retrieve information about a hospital by its ID.</p>
    <p><strong>Parameters:</strong> hospitalId: ID of the hospital</p>
    <p><strong>Response:</strong> Returns details about the hospital, including its name, the count of psychiatrists, the count of patients, and details of each psychiatrist working at the hospital.</p>

    <p>Postman Collection link: <a href="https://martian-astronaut-416807.postman.co/workspace/Lattice-Innovations-Assignment~e4f0118d-61ad-49e7-9ced-3a7b4ae9999f/collection/20012463-593b54de-48ae-451b-a15c-a10e5a691a5d?action=share&creator=20012463">Postman Collection</a></p>

    <h2>Running the Server:</h2>
    <p>To run the server locally, execute the following command:</p>
    <code>node index.js</code>
    <p>The server will start running at <a href="http://localhost:8000">http://localhost:8000</a>.</p>
</body>

</html>
