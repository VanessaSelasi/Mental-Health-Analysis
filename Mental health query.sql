DROP TABLE IF EXISTS mental_health_data;
CREATE DATABASE Mentalhealth;
USE Mentalhealth;

CREATE TABLE mental_health_data (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
time_stamp VARCHAR(50),
gender VARCHAR(20),
country VARCHAR(50),
occupation VARCHAR(100),
self_employed VARCHAR(30),
family_history VARCHAR(30),
treatment VARCHAR(50),
days_indoor VARCHAR(50),
growing_stress VARCHAR(30),
changing_habits VARCHAR(50),
mental_health_history VARCHAR(30),
mood_swings VARCHAR(30),
coping_struggles VARCHAR(30),
work_interest VARCHAR (30),
social_weakness VARCHAR(30),
mental_health_interview VARCHAR(30),
care_options VARCHAR(30)
);

SET GLOBAL local_infile = 1;

USE Mentalhealth;


TRUNCATE TABLE mental_health_data;
SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Mental Health Dataset.csv' 
INTO TABLE mental_health_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(time_stamp, gender, country, occupation, self_employed, family_history, treatment, days_indoor, growing_stress, changing_habits, mental_health_history, mood_swings, coping_struggles, work_interest, social_weakness, mental_health_interview, care_options);


SELECT * FROM mental_health_data LIMIT 10;
SELECT COUNT(*) FROM mental_health_data;
