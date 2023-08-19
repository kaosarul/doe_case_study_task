--- create table 2022 Multi age_composite classe
CREATE TABLE multi_age_composite_dataset AS SELECT * FROM READ_CSV_AUTO('./data/2022-multi-age_composite-classes-final.csv');
--- create table 2022 Attendance rates by Government Schools
CREATE TABLE student_attendance_dataset AS SELECT * FROM READ_CSV_AUTO('./data/2022-attendance-data-final.csv');

--- Update table names
ALTER TABLE multi_age_composite_dataset RENAME COLUMN 'School Code' TO School_code;
ALTER TABLE multi_age_composite_dataset RENAME COLUMN 'School Name' TO School_name;

--- 
ALTER TABLE student_attendance_unpivoted RENAME COLUMN 'School_Code' TO School_code;
ALTER TABLE student_attendance_unpivoted RENAME COLUMN 'School_Name' TO School_name;

DROP VIEW composite_class_attendance_data;

COMMIT;


