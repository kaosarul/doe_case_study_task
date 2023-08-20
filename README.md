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
- Outlier had been analysed by using 
	- lower_bound = Q1 - 1.5 * IQR
	- upper_bound = Q3 + 1.5 * IQR
## Step 3 Explore the data
Various EDA (Exploratory Data Analysis) had been explored as below:
### Data Distribution check
- data found right and left skewed
(/workspaces/doe_case_study_task/data/distribution_Multi_age_composite.png)
## Step 4 - Model the data

## Step 5 - Analyse the data

# Submitting your work

