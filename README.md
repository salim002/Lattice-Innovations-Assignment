Lattice Innovations Assignments
This project is built using Node.js and MySQL. It provides API endpoints to manage hospitals, psychiatrists, and patients.

Libraries/Frameworks Used:
Express: Used as the web application framework to handle routing and middleware.
Multer: Utilized for handling file uploads in the application.
MySQL2: Used to connect and interact with the MySQL database.
UUID: Utilized to generate unique identifiers for file uploads.
Dotenv: Used for loading environment variables from a .env file.

API Endpoints:
  Add Patient
  Endpoint: POST /addPatient
  Description: Endpoint to add a new patient to the system.
  Parameters:
    name: Patient's name
    address: Patient's address
    email: Patient's email address
    phone: Patient's phone number
    password: Patient's password
    photo: Patient's photo (optional)
    psychiatrist_id: ID of the psychiatrist treating the patient
  Response: Returns a success message along with the patient ID if the patient is successfully added.
  
Get Hospital Information
  Endpoint: GET /hospital/:hospitalId
  Description: Endpoint to retrieve information about a hospital by its ID.
  Parameters:
    hospitalId: ID of the hospital
  Response: Returns details about the hospital, including its name, the count of psychiatrists, the count of patients, and details of each psychiatrist working at the hospital.
  
  
Postman Collection link: https://martian-astronaut-416807.postman.co/workspace/Lattice-Innovations-Assignment~e4f0118d-61ad-49e7-9ced-3a7b4ae9999f/collection/20012463-593b54de-48ae-451b-a15c-a10e5a691a5d?action=share&creator=20012463

Running the Server:
To run the server locally, execute the following command:
node index.js
The server will start running at http://localhost:8000.
