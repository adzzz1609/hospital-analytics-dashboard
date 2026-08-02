-- Patient 5: Haemodialysis (12000)
UPDATE treatment_logs SET total = 12000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 5 AND treatment_id = 9)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 5 AND treatment_id = 9)
AND visits > 1;

-- Patient 7: Myocardial Infarction (220000)
UPDATE treatment_logs SET total = 220000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 7 AND treatment_id = 1)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 7 AND treatment_id = 1)
AND visits > 1;

-- Patient 9: Fractured Femur (150000)
UPDATE treatment_logs SET total = 150000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 9 AND treatment_id = 2)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 9 AND treatment_id = 2)
AND visits > 1;

-- Patient 11: Acute Appendicitis (85000)
UPDATE treatment_logs SET total = 85000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 11 AND treatment_id = 12)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 11 AND treatment_id = 12)
AND visits > 1;

-- Patient 17: Diabetes Mellitus (6500)
UPDATE treatment_logs SET total = 6500 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 17 AND treatment_id = 10)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 17 AND treatment_id = 10)
AND visits > 1;

-- Patient 18: Myocardial Infarction (220000)
UPDATE treatment_logs SET total = 220000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 18 AND treatment_id = 1)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 18 AND treatment_id = 1)
AND visits > 1;

-- Patient 20: Acute Asthma Attack (18000)
UPDATE treatment_logs SET total = 18000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 20 AND treatment_id = 11)
AND visits = 1;

-- Patient 24: Fractured Femur (150000)
UPDATE treatment_logs SET total = 150000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 24 AND treatment_id = 2)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 24 AND treatment_id = 2)
AND visits > 1;

-- Patient 26: Rhinoplasty (120000)
UPDATE treatment_logs SET total = 120000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 26 AND treatment_id = 8)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 26 AND treatment_id = 8)
AND visits > 1;

-- Patient 30: Myocardial Infarction (220000)
UPDATE treatment_logs SET total = 220000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 30 AND treatment_id = 1)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 30 AND treatment_id = 1)
AND visits > 1;

-- Patient 31: Haemodialysis (12000)
UPDATE treatment_logs SET total = 12000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 31 AND treatment_id = 9)
AND visits = 1;

-- Patient 43: Acute Appendicitis (85000)
UPDATE treatment_logs SET total = 85000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 43 AND treatment_id = 12)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 43 AND treatment_id = 12)
AND visits > 1;

-- Patient 46: Diabetes Mellitus (6500)
UPDATE treatment_logs SET total = 6500 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 46 AND treatment_id = 10)
AND visits = 1;

-- Patient 49: Acute Asthma Attack (18000)
UPDATE treatment_logs SET total = 18000 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 49 AND treatment_id = 11)
AND visits = 1;
UPDATE treatment_logs SET total = 0 
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 49 AND treatment_id = 11)
AND visits > 1;

COMMIT;
