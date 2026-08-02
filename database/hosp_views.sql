-- Patient Overview
CREATE OR REPLACE VIEW vw_patient_overview AS
SELECT
    p.patient_id,
    p.custFN || ' ' || p.custLN       AS full_name,
    p.bloodGroup,
    p.address,
    e.uniqueID                         AS encounter_id,
    e.type                             AS encounter_type,
    e.createdOn                        AS encounter_date,
    b.branch                           AS branch_name,
    t.diagnosis,
    t.treatmentCost
FROM patients p
JOIN encounters e   ON e.patient_id   = p.patient_id
JOIN branches b     ON b.branch_id    = e.branch_id
JOIN treatments t   ON t.treatment_id = e.treatment_id;

-- Revenue Summary
CREATE OR REPLACE VIEW vw_revenue_summary AS
SELECT
    b.branch                                        AS branch_name,
    EXTRACT(YEAR  FROM e.createdOn)                 AS yr,
    EXTRACT(MONTH FROM e.createdOn)                 AS mth,
    TO_CHAR(e.createdOn, 'MON-YYYY')               AS month_label,
    SUM(tl.total)                                   AS total_revenue,
    COUNT(DISTINCT e.uniqueID)                      AS num_encounters
FROM treatment_logs tl
JOIN encounters e  ON e.uniqueID  = tl.uniqueID
JOIN branches b    ON b.branch_id = e.branch_id
GROUP BY
    b.branch,
    EXTRACT(YEAR  FROM e.createdOn),
    EXTRACT(MONTH FROM e.createdOn),
    TO_CHAR(e.createdOn, 'MON-YYYY')
ORDER BY yr, mth, branch_name;

-- Encounter Breakdown
CREATE OR REPLACE VIEW vw_encounter_breakdown AS
SELECT
    b.branch          AS branch_name,
    e.type            AS encounter_type,
    CASE e.type
        WHEN 'ER' THEN 'Emergency'
        WHEN 'IP' THEN 'Inpatient'
        WHEN 'OP' THEN 'Outpatient'
    END               AS encounter_label,
    COUNT(*)          AS total_encounters
FROM encounters e
JOIN branches b ON b.branch_id = e.branch_id
GROUP BY b.branch, e.type
ORDER BY b.branch, e.type;

-- Staff Workload
CREATE OR REPLACE VIEW vw_staff_workload AS
SELECT
    s.staff_id,
    s.staff_name,
    s.role,
    s.hourly_rate,
    d.department,
    COUNT(tl.uniqueID)   AS total_visits_handled,
    SUM(tl.total)        AS total_revenue_handled
FROM staff s
JOIN treatment_logs tl ON tl.staff_id = s.staff_id
JOIN departments d     ON d.dept_id   = tl.dept_id
GROUP BY s.staff_id, s.staff_name, s.role, s.hourly_rate, d.department
ORDER BY total_visits_handled DESC;

-- Value Added Services
CREATE OR REPLACE VIEW vw_vas_analysis AS
SELECT
    CASE tl.VAS
        WHEN 0 THEN 'Standard'
        WHEN 1 THEN 'Add-ons'
        WHEN 2 THEN 'Premium'
        WHEN 3 THEN 'VIP'
    END                  AS vas_tier,
    tl.VAS               AS vas_code,
    e.type               AS encounter_type,
    COUNT(*)             AS total_count,
    SUM(tl.total)        AS total_revenue
FROM treatment_logs tl
JOIN encounters e ON e.uniqueID = tl.uniqueID
GROUP BY tl.VAS, e.type
ORDER BY tl.VAS, e.type;

-- Repeat Patients
CREATE OR REPLACE VIEW vw_repeat_patients AS
SELECT
    p.patient_id,
    p.custFN || ' ' || p.custLN   AS full_name,
    p.bloodGroup,
    COUNT(e.uniqueID)              AS total_encounters,
    MIN(e.createdOn)               AS first_visit,
    MAX(e.createdOn)               AS last_visit,
    SUM(tl.total)                  AS total_billed
FROM patients p
JOIN encounters e    ON e.patient_id  = p.patient_id
JOIN treatment_logs tl ON tl.uniqueID = e.uniqueID
GROUP BY p.patient_id, p.custFN, p.custLN, p.bloodGroup
HAVING COUNT(e.uniqueID) > 1
ORDER BY total_encounters DESC;