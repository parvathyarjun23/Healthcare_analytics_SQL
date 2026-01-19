-- Healthcare Readmission Analysis
-- Focus: Lifestyle diseases and clinical risk factors
-- Tool: SQLite + DBeaver

-- Count patients with lifestyle diseases 
SELECT
    COUNT(DISTINCT patient_id) AS patients_with_conditions
FROM conditions
WHERE diabetes = 1
   OR hypertension = 1
   OR hyperlipidemia = 1;

-- Overall hospital readmission rate
SELECT
    ROUND(
        (SUM(readmission_flag) * 100.0) / COUNT(*), 2
    ) AS readmission_rate_percent
FROM admissions;

-- Readmission by lifestyle disease
SELECT
    c.patient_id,
    c.diabetes,
    c.hypertension,
    c.hyperlipidemia,
    a.readmission_flag 
FROM admissions a
JOIN conditions c ON a.patient_id = c.patient_id
WHERE a.readmission_flag  = 1
GROUP BY
    c.patient_id,
    c.diabetes,
    c.hypertension,
    c.hyperlipidemia;

-- Identify high-risk patients
SELECT
   DISTINCT (cm.patient_id),
    p.age,
    cm.hba1c,
    cm.systolic_bp,
    cm.cholesterol
FROM patients p
JOIN clinical_metrics cm
    ON p.patient_id = cm.patient_id
WHERE
    cm.hba1c >= 6.5
 OR cm.systolic_bp >= 140
 OR cm.cholesterol >= 240;

-- High-risk patients with readmission history
SELECT DISTINCT
    p.patient_id,
    p.age,
    a.readmission_flag 
FROM patients p
JOIN admissions a
    ON p.patient_id = a.patient_id
JOIN clinical_metrics cm
    ON p.patient_id = cm.patient_id
WHERE
    a.readmission_flag = 1
 AND (
        cm.hba1c >= 6.5
     OR cm.systolic_bp >= 140
     OR cm.cholesterol >= 240
 );

-- Comparison of clinical metrics for readmitted vs non-readmitted patients
SELECT 
    a.readmission_flag,
    p.patient_id,
    COUNT(DISTINCT p.patient_id) AS patient_count,
    ROUND(AVG(cm.hba1c), 2) AS avg_hba1c,
    ROUND(AVG(cm.systolic_bp), 2) AS avg_systolic_bp,
    ROUND(AVG(cm.diastolic_bp), 2) AS avg_diastolic_bp,
    ROUND(AVG(cm.cholesterol), 2) AS avg_cholesterol
FROM admissions a
JOIN patients p 
    ON a.patient_id = p.patient_id
JOIN clinical_metrics cm 
    ON p.patient_id = cm.patient_id
GROUP BY a.readmission_flag;

--

