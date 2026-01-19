# Healthcare SQL Analytics: Lifestyle Diseases and Hospital Readmissions

## Project Overview
This project demonstrates the use of SQL in a healthcare setting to analyze lifestyle diseases and hospital readmissions. The focus is on conditions highly prevalent in the UAE, such as diabetes, hypertension, and hyperlipidemia.
The project simulates a real-world hospital database and performs clinical risk stratification and readmission analysis using SQL.

---

## Objectives
- Design a relational healthcare database
- Analyze the impact of lifestyle diseases on hospital readmissions
- Identify high-risk patients using clinical metrics
- Create an AI-ready dataset for future predictive modeling

---

## Problem Statement
Hospital readmissions are often linked to unmanaged lifestyle diseases such as diabetes, hypertension, and hyperlipidemia. This project analyzes clinical and admission data to identify patterns associated with readmission risk.

---

## Methodology
- Designed a normalized relational database using SQLite
- Created tables for patients, conditions, admissions, and clinical metrics
- Applied SQL queries to analyze readmission trends and lifestyle disease impact
- Compared clinical metrics between readmitted and non-readmitted patients

---

## Database Schema
The database consists of four interconnected tables:

- **patients** – demographic information
- **conditions** – chronic lifestyle diseases
- **admissions** – hospital admission and readmission data
- **clinical_metrics** – HbA1c, blood pressure, cholesterol levels

Each table is linked using `patient_id` as a foreign key.

---

## Tools Used
- SQLite
- DBeaver
- SQL (Joins, Aggregations, Subqueries, Conditional Logic)

---

## Key Analyses Performed
- Count patients with chronic conditions
- Overall hospital readmission rate
- Readmissions by lifestyle disease
- Identification of high-risk patients using clinical thresholds
- High-risk patients with readmission history
- Comparison of clinical metrics for readmitted vs non-readmitted patients

---

## Key Findings
- Overall hospital readmission rate: 37.5%
- Lifestyle diseases were present in 7 out of 8 patients
- Readmissions were strongly associated with hypertension and hyperlipidemia
- High-risk patients were identifiable using clinical thresholds
- 2 out of 6 high-risk patients had a readmission history

---

## Healthcare Impact
This project demonstrates how healthcare data analytics can support early risk identification, reduce hospital readmissions, and improve preventive care strategies.

---

## Key Skills Demonstrated
- SQL for healthcare data analysis
- Relational database design (SQLite)
- Healthcare domain knowledge (lifestyle diseases, readmissions)
- Data aggregation and clinical metric analysis
- Translating data insights into healthcare impact

---

## Future Scope
- Integration with Power BI dashboards
- Predictive modeling using Python and Machine Learning
- Clinical decision support using AI
  

---

## Project Status
Completed SQL-based healthcare analytics project  
Ready for AI and advanced analytics integration
