-- Fix inappropriate diagnoses for patients
-- Rajesh Patel: NICU -> Haemodialysis
UPDATE encounters SET treatment_id = 9 
WHERE patient_id = 5 AND treatment_id = 6;

-- Suresh Gupta: NICU -> Myocardial Infarction
UPDATE encounters SET treatment_id = 1 
WHERE patient_id = 7 AND treatment_id = 6;

-- Ravi Kumar: Normal Delivery -> Fractured Femur
UPDATE encounters SET treatment_id = 2 
WHERE patient_id = 9 AND treatment_id = 3;

-- Venkat Raman: C-Section -> Acute Appendicitis
UPDATE encounters SET treatment_id = 12 
WHERE patient_id = 11 AND treatment_id = 4;

-- Dinesh Shah: C-Section -> Diabetes Mellitus
UPDATE encounters SET treatment_id = 10 
WHERE patient_id = 17 AND treatment_id = 4;

-- Sachin Tendulkar: NICU -> Myocardial Infarction
UPDATE encounters SET treatment_id = 1 
WHERE patient_id = 18 AND treatment_id = 6;

-- Virat Kohli: Normal Delivery -> Acute Asthma Attack
UPDATE encounters SET treatment_id = 11 
WHERE patient_id = 20 AND treatment_id = 3;

-- Naveen Tiwari: C-Section -> Fractured Femur
UPDATE encounters SET treatment_id = 2 
WHERE patient_id = 24 AND treatment_id = 4;

-- Ajay Dubey: Gynae Laparoscopy -> Rhinoplasty
UPDATE encounters SET treatment_id = 8 
WHERE patient_id = 26 AND treatment_id = 5;

-- Manoj Banerjee: NICU -> Myocardial Infarction
UPDATE encounters SET treatment_id = 1 
WHERE patient_id = 30 AND treatment_id = 6;

-- Rahul Dravid: Normal Delivery -> Haemodialysis
UPDATE encounters SET treatment_id = 9 
WHERE patient_id = 31 AND treatment_id = 3;

-- Siva Thakur: C-Section -> Acute Appendicitis
UPDATE encounters SET treatment_id = 12 
WHERE patient_id = 43 AND treatment_id = 4;

-- Jasprit Bumrah: Normal Delivery -> Diabetes Mellitus
UPDATE encounters SET treatment_id = 10 
WHERE patient_id = 46 AND treatment_id = 3;

-- Hardik Pandya: Gynae Laparoscopy -> Acute Asthma Attack
UPDATE encounters SET treatment_id = 11 
WHERE patient_id = 49 AND treatment_id = 5;

COMMIT;