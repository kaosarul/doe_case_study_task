CREATE OR REPLACE VIEW nsw_composite_school_attendance_data AS
SELECT
    M.School_code,
    M.School_name,
    M.Year,
    M.Composite_class_count,
    M.Composite_class_students,
    M.Pct_composite_classes,
    M.Pct_composite_class_students,
    A.Attendance_pct,
    P.ICSEA_value,
    P.Level_of_schooling,
    P.latest_year_enrolment_FTE,
    P.Indigenous_pct,
    P.LBOTE_pct,
    P.Selective_school,
    P.Opportunity_class,
    P.School_specialty_type,
    P.School_subtype,
    P.Preschool_ind,
    P.Distance_education,
    P.Intensive_english_centre,
    P.School_gender,
    P.Late_opening_school,
    P.ASGS_remoteness,
    P.Latitude,
    P.Longitude,
    P.Operational_directorate,
    P.Principal_network,
    P.Website,
    P.Date_1st_teacher
FROM
    multi_age_composite_unpivoted M
JOIN
    student_attendance_unpivoted A ON M.School_code = A.School_code AND M.Year = A.Year
JOIN
    public_school_nsw_master_dataset P ON M.School_code = P.School_code;
