# GetAndCleanData
Getting and Cleaning Data Course Project

This repository conatins three files:
1. README.md : explains how the script works (this file)
2. CodeBook.md: describes the variables, the data, and transformations preformed on the original data.
3. run_analysis.R: contains the R code for creating the tidy data 

run_analysis.R
--------------

The R script follows the instructions on the Coursera site. 
This is detailed description of what the code does:

1. loads the necessary packages
2. reads all necessary files (the folder with the data need to be in the working directory)
3. merges the training and test sets to one data frame
4. extracts only the mean and standard deviation features:
	a. creates a logical vector for the features to keep
	b. select the wanted features from the data frame and the feature names.
5. adds a column with activity names to the data frame
	a. merge the activity data from the appropriate files
	b. map the values to meaningful names and add to the data frame
6. renames the columns with the feature names
7. finds the average of each variable for each activity and each subject
	a. adds subject information from file to the data frame
	b. groups the data set by 'activity' and 'subject'
	c. calculates average for each feature
	d. renames the columns to indicate that they contain average information
8. writes the resulting data frame to file
