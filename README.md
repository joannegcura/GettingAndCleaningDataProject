This repository contains the following files:

README.md - provides a list of files in the repository and describes the R script.
tidydata.txt - contains the tidy data set.
CodeBook.md - describes the variables, the data, and transformations or work performed to clean up the data.
run_analysis.R - the R script that was used to create the data set.

The R script, run_analysis.R, does the following:
1.	Downloads and unzips the dataset if it does not exist.
2.	Read the data.
3.	Format and read training and test data sets.
4.	Merge the training and the test sets to create one data set.
5.	Name the columns and merge the data
6.	Extract the measurements on the mean and standard deviation for each measurement
7.	Use descriptive activity names to name the activities in the data set
8.	Label the data set with descriptive variable names
9.	Create a second independent tidy data set with the average of each variable for each activity and each subject.
10.	Write the data set to the tidydata.txt file
