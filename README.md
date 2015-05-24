# getting_and_cleaning_data

##Project Description and Overview

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

Article link: http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/


## Source data links

Experiment description link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here is the data source for the project: 

Data Link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Project functionality objectives for R script

You should create one R script called run_analysis.R that does the following. 
-1) Merges the training and the test sets to create one data set.
-2) Extracts only the measurements on the mean and standard deviation for each measurement. 
-3) Uses descriptive activity names to name the activities in the data set
-4) Appropriately labels the data set with descriptive variable names. 
-5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## List of files to be created in order to successfuly complete the project

-READ.md 
-CodeBook.md
-run_analysis.R
-tidydata.txt
-dataset.txt  (for comparions but not required)


## System notes and specifications

This project was completed using the standard R/RStudio tools for running the R script as follows:

R version 3.2.0 -- "Full of Ingredients"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)


## A stepwise description of the project

-Step 1: Download the Data getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip from  accessing the data link above.

-Step 2: The zip file is generated in the R users working direcoty. A directory by the name of  
"UCI HAR dataset" is created. 

-Step 3: Change the R working directory to UCI HAR dataset.

-Step 4: Run the script run_analysis.R in RStudio until the command prompt is returned and the script is terminated.

The following steps take place within the script:
-1) Merges the training and the test sets to create one data set.
-2) Extracts only the measurements on the mean and standard deviation for each measurement. 
-3) Uses descriptive activity names to name the activities in the data set
-4) Appropriately labels the data set with descriptive variable names.


Step 5: Observe files created by script. Although tidtdata.txt is the project output, dataset.txt was also 
created for comparison and represents the output of objective 4 described above. 
-5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
