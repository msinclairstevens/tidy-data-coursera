# Tidy Data Example
Purpose: Create a dataset based on the principles of tidy data.

# Files
The files in this repo include
* run_analysis.R: the R script used to create a tidy data set
* CodeBook.md: a description of the files and their variables.
* README.md: These instructions.

#How to Use
1. Download the source data files from this URL: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Unzip the source data files into your working directory. This will create a subdirectory which includes the files required as input to the create.tidy script.
* UCI HAR Dataset/activity_labels.txt
* UCI HAR Dataset/features.txt
* UCI HAR Dataset/test/subjects_train.txt
* UCI HAR Dataset/test/X_test.txt
* UCI HAR Dataset/test/y_test.txt
* UCI HAR Dataset/train/subjects_train.txt
* UCI HAR Dataset/train/X_train.txt
* UCI HAR Dataset/train/y_train.txt
Note: There are other information and raw data files in this directory. However, they are not accessed by the create.tidy script.

3. Copy the run_analysis.R file into the working directory. 
4. Source the run_analysis.R file.
5. In the console, start the script with the command: create.tidy()
Note: This script depends on the package dplyr being installed. 
6. The output of the script will be a text file in the working directory named: tidy.txt
7. To check that the tidy.txt file follows the principles of tidy data, you can read it into R with the read.table command using the argument, header=TRUE. For example: read.table("./tidy.txt", header=TRUE)

#Result
The result of running the script against the "messy" data is data set where the codes for variable (column) names have been replaced by the actual name and the numeric codes for activity values have been replaced by their corresponding English names.

All the subjects, which had been separated into two arbitrary groups even though they all did the same thing, are now in one dataset.

The multiple individual observations for each activity per subject has been aggregated into a single value, the mean of those values and the variables renamed to reflect that this is a calculated field.