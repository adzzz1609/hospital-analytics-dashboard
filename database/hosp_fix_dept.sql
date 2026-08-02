-- Haemodialysis -> Nephrology (dept 8)
UPDATE treatment_logs SET dept_id = 8, staff_id = 8
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 5 AND treatment_id = 9);

UPDATE treatment_logs SET dept_id = 8, staff_id = 8
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 31 AND treatment_id = 9);

-- Myocardial Infarction -> Cardiology (dept 2)
UPDATE treatment_logs SET dept_id = 2, staff_id = 2
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 7 AND treatment_id = 1);

UPDATE treatment_logs SET dept_id = 2, staff_id = 2
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 18 AND treatment_id = 1);

UPDATE treatment_logs SET dept_id = 2, staff_id = 2
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 30 AND treatment_id = 1);

-- Fractured Femur -> Orthopaedics (dept 3)
UPDATE treatment_logs SET dept_id = 3, staff_id = 3
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 9 AND treatment_id = 2);

UPDATE treatment_logs SET dept_id = 3, staff_id = 3
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 24 AND treatment_id = 2);

-- Acute Appendicitis -> Emergency (dept 1)
UPDATE treatment_logs SET dept_id = 1, staff_id = 1
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 11 AND treatment_id = 12);

UPDATE treatment_logs SET dept_id = 1, staff_id = 1
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 43 AND treatment_id = 12);

-- Diabetes Mellitus -> General Medicine (dept 4)
UPDATE treatment_logs SET dept_id = 4, staff_id = 5
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 17 AND treatment_id = 10);

UPDATE treatment_logs SET dept_id = 4, staff_id = 5
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 46 AND treatment_id = 10);

-- Acute Asthma Attack -> Emergency (dept 1)
UPDATE treatment_logs SET dept_id = 1, staff_id = 1
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 20 AND treatment_id = 11);

UPDATE treatment_logs SET dept_id = 1, staff_id = 1
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 49 AND treatment_id = 11);

-- Rhinoplasty -> Plastic and Reconstructive Surgery (dept 7)
UPDATE treatment_logs SET dept_id = 7, staff_id = 7
WHERE uniqueID IN (SELECT uniqueID FROM encounters WHERE patient_id = 26 AND treatment_id = 8);

COMMIT;