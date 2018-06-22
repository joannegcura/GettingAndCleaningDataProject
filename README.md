# GettingAndCleaningDataProject

This repository contains the following files:
•	README.md - provides a list of files in the repository and describes the R script.
•	tidydata.txt - contains the tidy data set.
•	CodeBook.md - describes the variables, the data, and transformations or work performed to clean up the data.
•	run_analysis.R - the R script that was used to create the data set.

The R script, run_analysis.R, does the following which produces the tidydata.txt file:
1.	Downloads and unzips the dataset if it does not exist.
2.	Load the activity and feature info
3.	Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
4.	Loads the activity and subject data for each dataset, and merges those columns with the dataset
5.	Merges the two datasets
6.	Converts the activity and subject columns into factors
7.	Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
