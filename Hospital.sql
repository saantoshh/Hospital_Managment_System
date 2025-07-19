CREATE DATABASE hospital;
USE hospital;

CREATE TABLE patients(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
gender VARCHAR(10) NOT NULL
);

CREATE TABLE doctors(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255)  NOT NULL,
specialization VARCHAR(255) NOT NULL
);
CREATE TABLE appointments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);
SHOW TABLES;

INSERT INTO doctors(name , specialization) VALUES ("PANKAJ JAIN","PHYSICIAN");
INSERT INTO doctors(name , specialization) VALUES ("HARSHIT JAIN","NeuroSurgeon");
INSERT INTO doctors(name , specialization) VALUES ("Harry","Heart Specialist");

SELECT*FROM doctors;


DESCRIBE appointments;
;
