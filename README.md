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
	- Very nominal missing values had been found in the datasets
- Outlier had been analysed by using 
	- lower_bound = Q1 - 1.5 * IQR
	- upper_bound = Q3 + 1.5 * IQR
## Step 3 Explore the data
Various EDA (Exploratory Data Analysis) had been explored as below:
### Data Distribution check
- data found right and left skewed
### Correlation graph
|                              | Composite_class_count | Composite_class_students | Pct_composite_classes | Pct_composite_class_students | Attendance_pct | ICSEA_value |
|------------------------------|-----------------------|--------------------------|----------------------|------------------------------|----------------|-------------|
| Composite_class_count        | 1.000                 | 0.218                    | 0.013                | 0.218                        | -0.015         | 0.001       |
| Composite_class_students     | 0.218                 | 1.000                    | 0.121                | 0.121                        | 0.040          | 0.074       |
| Pct_composite_classes        | 0.013                 | 0.121                    | 1.000                | 0.996                        | -0.204         | -0.398      |
| Pct_composite_class_students | 0.218                 | 0.121                    | 0.996                | 1.000                        | -0.204         | -0.395      |
| Attendance_pct              | -0.015                | 0.040                    | -0.204               | -0.204                       | 1.000          | 0.494       |
| ICSEA_value                 | 0.001                 | 0.074                    | -0.398               | -0.395                       | 0.494          | 1.000       |

The correlation matrix suggests several interesting relationships between attendance and other variables. Notably, there seems to be a mild positive correlation between attendance and ICSEA_value, indicating that schools with higher ICSEA values might have slightly better attendance rates. Additionally, there appears to be a small negative correlation between attendance and Pct_composite_classes as well as Pct_composite_class_students, hinting that schools with a higher percentage of composite classes might experience slightly lower attendance rates. However, it's important to note that correlations don't necessarily imply causation
### Line graph 
- Line graph had been checked for Average Trends Over Years of Attendence and composite classes and found attendance and multi composite classes are little negatively related
Also EDA done with *Q-Q plot (Quantile-Quantile plot): compare two probability distributions*, *Pairwise relationships and distributions* and *Distribution plot*.

## Step 4 - Model the data
Model data had been created by creating view table named as nsw_composite_school_attendance_data.

## Step 5 - Analyse the data
The analysis was followed as below:
### Hypothesis Formulation:

| Title                   | Description                                                          |
|-------------------------|----------------------------------------------------------------------|
| **Objective**           | Determine if multi-age composite classes have an impact on attendance rates. |
| **Null Hypothesis (H₀)** | Multi-age composite classes have no impact on attendance rates.      |
| **Alternative Hypothesis (H₁)** | Multi-age composite classes have a significant impact on attendance rates. |

### Descriptive Statistics:

| Feature                                           | Correlation Value | Summary                                       |
|---------------------------------------------------|-------------------|-----------------------------------------------|
| `Composite_class_count vs. Attendance_pct`        | -0.013698         | Very weak negative relation.                  |
| `Composite_class_students vs. Attendance_pct`     | 0.040343          | Slight increase with more students in composite classes. |
| `Pct_composite_classes vs. Attendance_pct`        | -0.208262         | Schools with more composite classes might see a bit less attendance. |
| `Pct_composite_class_students vs. Attendance_pct`| -0.205552         | More students in composite classes could lead to a slight drop in attendance. |

**Overall Summary**: 

The more composite classes or students there are, there might be a slight drop in attendance. However, the relationship is generally weak, indicating other factors could play a significant role in attendance rates.


# Submitting your work

