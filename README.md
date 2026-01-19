# Healthcare SQL Analytics Project – Lifestyle Diseases & Readmissions

## 📌 Project Overview
This project demonstrates the use of SQL in a healthcare setting to analyze lifestyle diseases and hospital readmissions. The focus is on conditions highly prevalent in the UAE, such as diabetes, hypertension, and hyperlipidemia.

The project simulates a real-world hospital database and performs clinical risk stratification and readmission analysis using SQL.

---

## 🎯 Objectives
- Design a relational healthcare database
- Analyze the impact of lifestyle diseases on hospital readmissions
- Identify high-risk patients using clinical metrics
- Create an AI-ready dataset for future predictive modeling

---

## 🗂️ Database Schema
The database consists of four interconnected tables:

- **patients** – demographic information
- **conditions** – chronic lifestyle diseases
- **admissions** – hospital admission and readmission data
- **clinical_metrics** – HbA1c, blood pressure, cholesterol levels

Each table is linked using `patient_id` as a foreign key.

---

## 🛠️ Tools Used
- SQLite
- DBeaver
- SQL (Joins, Aggregations, Subqueries, Conditional Logic)

---

## 🔍 Key Analyses Performed
- Count patients with chronic conditions
- Average clinical metrics for readmitted vs non-readmitted
- Overall hospital readmission rate
- Readmissions by lifestyle disease
- Identification of high-risk patients using clinical thresholds
- High-risk patients with readmission history
- Comparison of clinical metrics for readmitted vs non-readmitted patients
---

## 📊 Sample Insights
- Patients with uncontrolled HbA1c and hypertension showed higher readmission rates
- Multiple comorbidities increased the likelihood of readmission
- Clinical metrics can be used for early risk stratification

---

## 🚀 Future Scope
- Integration with Power BI dashboards
- Predictive modeling using Python and Machine Learning
- Clinical decision support using AI

---

## 📎 Project Status
✅ Completed SQL-based healthcare analytics project  
🔜 Ready for AI and advanced analytics integration
