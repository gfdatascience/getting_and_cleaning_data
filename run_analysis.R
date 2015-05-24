## Getting and Cleaning Data Course Project
## This code assumes that the working directory is set to the UCI directory

##You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.


## 1. Merges the training and the test sets to create one data set.
# read and merge the test data
subj_test <- read.table("test/subject_test.txt", col.names="subject")
acts_test <- read.table("test/y_test.txt", col.names="activity")
data_test <- read.table("test/X_test.txt")
merged_test <- cbind(subj_test, acts_test, data_test)

# read and merge the train data
subj_train <- read.table("train/subject_train.txt", col.names="subject")
acts_train <- read.table("train/y_train.txt", col.names="activity")
data_train <- read.table("train/X_train.txt")
merged_train <- cbind(subj_train, acts_train, data_train)

# merging train and test datasets
mergedata <- rbind(merged_test, merged_train)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# read in the features
features <- read.table("features.txt", sep="", header=FALSE,stringsAsFactors=FALSE)

# extracting features of mean and standard deviation
features_mean_std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# creating a data structure with the mean and standard deviation
data_mean_std <- mergedata[, c(1, 2, features_mean_std$V1+2)]


## 3. Uses descriptive activity names to name the activities in the data set
# reading in activity names
activities <- read.table("activity_labels.txt", sep="", header=FALSE, stringsAsFactors=FALSE)

# create proper names
data_mean_std$activity <- activities[data_mean_std$activity, 2]


## 4. Appropriately labels the data set with descriptive variable names. 
# make appropriate names list
# creating descriptive column and feature names
descriptive_colnames <- c("subject", "activity", features_mean_std$V2)

# remove special characters
descriptive_colnames <- gsub('[-]','.', descriptive_colnames)
descriptive_colnames <- gsub('[()]','', descriptive_colnames)

# convert to lowercase
descriptive_colnames <- tolower(descriptive_colnames)

# map the list to column names
colnames(data_mean_std) <- descriptive_colnames

# create a file for processed dataset
write.table(data_mean_std, "dataset.txt", row.name=FALSE)


## 5. From the data set in step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

tidy_data <- aggregate(data_mean_std[, 3:ncol(data_mean_std)],
                       by=list(subject = data_mean_std$subject,activity = data_mean_std$activity), FUN=mean)

# write the data for course upload
write.table(tidy_data, "tidydata.txt", row.name=FALSE)