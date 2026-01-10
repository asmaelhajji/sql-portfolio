-- Anzahl der Patienten pro Monat
SELECT 
  DATE_TRUNC('month', admission_date) AS monat,
  COUNT(patient_id) AS patienten_anzahl
FROM patients
GROUP BY monat
ORDER BY monat;

-- Durchschnittliche Aufenthaltsdauer (in Tagen)
SELECT 
  AVG(discharge_date - admission_date) AS durchschnittlicher_aufenthalt
FROM patients
WHERE discharge_date IS NOT NULL;

-- Auslastung pro Station
SELECT 
  ward,
  COUNT(patient_id) AS patienten_pro_station
FROM patients
GROUP BY ward
ORDER BY patienten_pro_station DESC;
