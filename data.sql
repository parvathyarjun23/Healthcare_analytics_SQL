INSERT INTO patients
(patient_id, age, gender, bmi, smoking_status, physical_activity_level)
VALUES
(1, 45, 'Female', 31.2, 'Never', 'Low'),
(2, 52, 'Male', 29.5, 'Former', 'Moderate'),
(3, 38, 'Female', 27.8, 'Never', 'High'),
(4, 60, 'Male', 33.4, 'Current', 'Low'),
(5, 50, 'Female', 30.1, 'Never', 'Moderate'),
(6, 42, 'Male', 28.9, 'Former', 'Low'),
(7, 55, 'Female', 34.6, 'Current', 'Low'),
(8, 47, 'Male', 26.5, 'Never', 'High');

INSERT INTO conditions 
(condition_id, patient_id, diabetes, hypertension, hyperlipidemia)
VALUES
(1, 1, 1, 1, 0),  -- Diabetes + Hypertension
(2, 2, 0, 1, 1),  -- Hypertension + Hyperlipidemia
(3, 3, 0, 0, 0),  -- No chronic condition (high risk)
(4, 4, 0, 1, 1),  -- Hypertension + Hyperlipidemia
(5, 5, 1, 0, 1),  -- Diabetes + Hyperlipidemia
(6, 6, 0, 1, 0),  -- Hypertension
(7, 7, 1, 1, 1),  -- All three conditions
(8, 8, 0, 0, 1);  -- Hyperlipidemia

INSERT INTO admissions 
(admission_id, patient_id, admission_date, discharge_date, admission_reason,readmission_flag)
VALUES
(1, 1, '2023-01-10', '2023-01-15', 'Diabetes management', 0),
(2, 2, '2023-02-05', '2023-02-08', 'Hypertension crisis', 1),
(3, 3, '2023-03-12', '2023-03-14', 'Routine checkup', 0),
(4, 4, '2023-01-20', '2023-01-28', 'Cardiac event', 1),
(5, 5, '2023-04-02', '2023-04-06', 'Diabetes complications', 0),
(6, 6, '2023-05-10', '2023-05-13', 'Hypertension monitoring', 0),
(7, 7, '2023-02-18', '2023-02-25', 'Multiple chronic conditions', 1),
(8, 8, '2023-06-01', '2023-06-03', 'Obesity consultation', 0);

INSERT INTO clinical_metrics 
(metric_id, patient_id, hba1c, systolic_bp, diastolic_bp, cholesterol)
VALUES
(11, 1, 8.2, 145, 95, 240),   -- Diabetic, hypertensive
(12, 2, 6.5, 138, 88, 210),   -- Prediabetic
(13, 3, 5.4, 120, 80, 180),   -- Normal
(14, 4, 7.6, 142, 92, 230),   -- High risk
(15, 5, 9.1, 150, 98, 260),   -- Very high risk
(16, 6, 6.9, 135, 85, 205),   -- Borderline diabetic
(17, 7, 5.8, 118, 78, 190),   -- Near normal
(18, 8, 8.7, 148, 96, 250);   -- Poorly controlled diabetic