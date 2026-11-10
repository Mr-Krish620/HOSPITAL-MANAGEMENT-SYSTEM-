-- Hospital Management System Database Schema
-- Review 2 Submission - Team Healthviva

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- 1. Doctors Table
CREATE TABLE IF NOT EXISTS doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    fee DECIMAL(10, 2) NOT NULL
);

-- 2. Patients Table
CREATE TABLE IF NOT EXISTS patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    disease VARCHAR(255),
    admitted BOOLEAN DEFAULT FALSE
);

-- 3. Appointments Table
CREATE TABLE IF NOT EXISTS appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appt_date DATE NOT NULL,
    appt_time TIME NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
);

-- 4. Bills Table
CREATE TABLE IF NOT EXISTS bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE
);

-- Seed Initial Demo Data
INSERT INTO doctors (name, specialization, fee) VALUES
('Dr. Sharma', 'Cardiology', 150.00),
('Dr. Lee', 'Orthopedics', 120.00);

INSERT INTO patients (name, age, gender, disease, admitted) VALUES
('John Smith', 45, 'Male', 'Chest pain', FALSE);
