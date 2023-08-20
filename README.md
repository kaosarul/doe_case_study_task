# New South Wales Department of Education (NSW DOE) - Data Case Study 🦘

## Introduction
In this case study, I delve into the dataset of public schools in New South Wales (NSW), Australia. My main goal is to investigate whether the configuration of mixed-age classes, where students from different age groups are combined, has any influence on their attendance rates. By examining attendance patterns in relation to various school factors, I aim to uncover insights into how class composition might impact student attendance in NSW public schools.

# The Case Study

## Background

The data sets had been taken from the [NSW Department of Education](https://education.nsw.gov.au/) which had been ingested into duckdb database in github codespace, model the data and then analyse the data to provide the data insights on the case topic - **Does multi age composite classes have an impact on attendance rates?**.

The data sets include (more info below):
- Attendance
- Multi-age composite classes (classes are made up of students drawn from different year levels)
- School properties

## Assessment Overview: Exploring NSW Public Schools Data

I understand that this assessment is designed to evaluate problem-solving skills, SQL modeling proficiency, and data analysis capabilities. It involves working with three datasets related to NSW public schools. The emphasis is not on the specific data modeling technique but on delivering insights. I will document my process, findings, and insights in a straightforward README.md file, and version control will be maintained using Git.

## Step 1 - Setup the case study environment
- 1.a Creating the Repository
- 1.b Initiating the Codespace

## Step 2 - Ingest data
Data had been ingested into duckdb from 2 csv files 
- 2022-multi-age_composite-classes-final.csv
- 2022-attendance-data-final.csv
### Data Cleaning
- the above two datasets had been unpivoted
- Missing value evaluation and Missing value imputation had been done 
<duckdb.DuckDBPyConnection at 0x7f6f51402630>
Percentage of outliers of the MULTI_AGE_COMPOSITE_UNPIVOTED table:
------------------------------------------------------------
Percentage of outliers of the MULTI_AGE_COMPOSITE_UNPIVOTED table:
------------------------------------------------------------
School_code: 0.00%
AgeID: 18.19%
Postcode: 0.09%
latest_year_enrolment_FTE: 1.99%
ICSEA_value: 1.44%
Latitude: 16.88%
Longitude: 28.07%

Percentage of Missing Values of MULTI_AGE_COMPOSITE_UNPIVOTED :
--------------------------------------------------
Composite_class_count           0.00000
Composite_class_students        0.00000
Pct_composite_classes           1.99765
Pct_composite_class_students    1.99765
dtype: float64
Percentage of outliers in PUBLIC_SCHOOL_NSW_MASTER_DATASET:
School_code: 0.00%
AgeID: 18.19%
Postcode: 0.09%
latest_year_enrolment_FTE: 1.99%
ICSEA_value: 1.44%
Latitude: 16.88%
Longitude: 28.07%
Percentage of outliers in Attendance_pct: 4.82%


Info on Missing Data in public_school_nsw_master_dataset
                                        Missing Count   Missing %
Support_classes                                  2216  100.000000
Fax                                               101    4.557762
LBOTE_pct                                          62    2.797834
ICSEA_value                                        59    2.662455
Indigenous_pct                                     50    2.256318
latest_year_enrolment_FTE                          50    2.256318
Assets unit                                        38    1.714801
AECG_region                                        24    1.083032
FACS_district                                      10    0.451264
Local_health_district                              10    0.451264
electorate_2015_2022                                8    0.361011
Fed_electorate                                      8    0.361011
Phone                                               4    0.180505
Town_suburb                                         4    0.180505
AgeID                                               2    0.090253
School_Email                                        1    0.045126
Date_1st_teacher                                    1    0.045126
Postcode                                            1    0.045126
SA4                                                 1    0.045126
Operational_directorate_office_address              1    0.045126
Operational_directorate_office_phone                1    0.045126
Operational_directorate_office                      1    0.045126
Principal_network                                   0    0.000000
Operational_directorate                             0    0.000000
School_code                                         0    0.000000
ASGS_remoteness                                     0    0.000000
Longitude                                           0    0.000000
Latitude                                            0    0.000000
Intensive_english_centre                            0    0.000000
electorate_from_2023                                0    0.000000
LGA                                                 0    0.000000
Late_opening_school                                 0    0.000000
School_gender                                       0    0.000000
Distance_education                                  0    0.000000
Preschool_ind                                       0    0.000000
School_subtype                                      0    0.000000
School_specialty_type                               0    0.000000
Opportunity_class                                   0    0.000000
Selective_school                                    0    0.000000
Level_of_schooling                                  0    0.000000
Website                                             0    0.000000
Street                                              0    0.000000
School_name                                         0    0.000000
Date_extracted                                      0    0.000000
------

Info on Missing Data in multi_age_composite_unpivoted
                              Missing Count  Missing %
Pct_composite_classes                   272   1.996477
Pct_composite_class_students            272   1.996477
School_code                               0   0.000000
School_name                               0   0.000000
Year                                      0   0.000000
Composite_class_count                     0   0.000000
Composite_class_students                  0   0.000000
------

Info on Missing Data in student_attendance_unpivoted
                Missing Count  Missing %
Attendance_pct           1723   7.074813
School_code                11   0.045167
School_name                 0   0.000000
Year                        0   0.000000
- Outlier had been analysed by using 
	- lower_bound = Q1 - 1.5 * IQR
	- upper_bound = Q3 + 1.5 * IQR
## Step 3 Explore the data
Various EDA (Exploratory Data Analysis) had been explored as below:
### Data Distribution check
- data found right and left skewed

## Step 4 - Model the data
Model data had been created by creating view table named as nsw_composite_school_attendance_data.

## Step 5 - Analyse the data

# Submitting your work

