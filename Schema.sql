-- Schema for Healthcare Readmission Analysis
-- Database: SQLite
-- Purpose: Analyze lifestyle diseases and hospital readmissions

CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    age INTEGER,
    gender TEXT
);

CREATE TABLE conditions (
    condition_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    diabetes INTEGER,
    hypertension INTEGER,
    hyperlipidemia INTEGER,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE admissions (
    admission_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    admission_date DATE,
    discharge_date DATE,
    admission_reason TEXT,
    readmission_flag INTEGER,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE clinical_metrics (
    metric_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    hba1c REAL,
    systolic_bp INTEGER,
    diastolic_bp INTEGER,
    cholesterol INTEGER,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

