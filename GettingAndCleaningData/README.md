# README

This is the README file for the class project of the course 
"Getting and Cleaning Data"

## Project description

A description of the project, including study design, cleaning steps and
information about all of the output variables may be found at CodeBook.md
in this directory. 

## Data Analysis

Data analysis is performed by running the script run_analysis.R.
In order to run this script, the raw data must be in the same directory
at the location "UCI HAR Dataset"

### Tasks performed by run_analysis.R ### 

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.   
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average 
   of each variable for each activity and each subject.

## Output

Running run_analysis.R will produce the clean dataset clean.txt in this directory.