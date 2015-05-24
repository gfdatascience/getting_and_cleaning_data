# The CodeBook 


* The source data was all derived from the link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* Once unzipped the file generated a directory UCI HAR Dataset which contained all source directories and files 

* The source training, subjects and test datasets were merged into "mergedata" in the script.

* As outlined in README.md the merged data set was processed in a stepwise manner and the "tidydata.txt" was produced:

###Variables in tidydata.txt

####subject
This label represent the 30 individual participants given a unique id number from 1 to 30.


####activity
This label "activity" describes the activity that was being performed at any given time by one of the 30 subjects.
The scale is defined below and was obtained from "activity_labels.txt":

1. WALKING.
2. WALKING_UPSTAIRS.
3. WALKING_DOWNSTAIRS.
4. SITTING.
5. STANDING.
6. LAYING.


####The labels for mean and std below have been transformed by:
-1) replacing "-" with "." and 2) removing "()".   

### The fields below were obtained by: 
1. The merging on training and data sets form files labled with identifiers "X", "y" and "subjects".
2. Extracting mean and sandard deviation fields from the merged files/
3. Reformating the label descriptors by replacing "-" with "." and removing "()".

* tbodyacc.mean.x 
* tbodyacc.mean.y
* tbodyacc.mean.z
* tbodyacc.std.x
* tbodyacc.std.y
* tbodyacc.std.z
* tgravityacc.mean.x
* tgravityacc.mean.y
* tgravityacc.mean.z
* tgravityacc.std.x
* tgravityacc.std.y
* tgravityacc.std.z
* tbodyaccjerk.mean.x
* tbodyaccjerk.mean.y
* tbodyaccjerk.mean.z
* tbodyaccjerk.std.x
* tbodyaccjerk.std.y
* tbodyaccjerk.std.z
* tbodygyro.mean.x
* tbodygyro.mean.y
* tbodygyro.mean.z
* tbodygyro.std.x
* tbodygyro.std.y
* tbodygyro.std.z
* tbodygyrojerk.mean.x
* tbodygyrojerk.mean.y
* tbodygyrojerk.mean.z
* tbodygyrojerk.std.x
* tbodygyrojerk.std.y
* tbodygyrojerk.std.z
* tbodyaccmag.mean
* tbodyaccmag.std
* tgravityaccmag.mean
* tgravityaccmag.std
* tbodyaccjerkmag.mean
* tbodyaccjerkmag.std
* tbodygyromag.mean
* tbodygyromag.std
* tbodygyrojerkmag.mean
* tbodygyrojerkmag.std
* fbodyacc.mean.x
* fbodyacc.mean.y
* fbodyacc.mean.z
* fbodyacc.std.x
* fbodyacc.std.y
* fbodyacc.std.z
* fbodyaccjerk.mean.x
* fbodyaccjerk.mean.y
* fbodyaccjerk.mean.z
* fbodyaccjerk.std.x
* fbodyaccjerk.std.y
* fbodyaccjerk.std.z
* fbodygyro.mean.x
* fbodygyro.mean.y
* fbodygyro.mean.z
* fbodygyro.std.x
* fbodygyro.std.y
* fbodygyro.std.z
* fbodyaccmag.mean
* fbodyaccmag.std
* fbodybodyaccjerkmag.mean
* fbodybodyaccjerkmag.std
* fbodybodygyromag.mean
* fbodybodygyromag.std
* fbodybodygyrojerkmag.mean
* fbodybodygyrojerkmag.std

####Original lables unprocessed
The raw features list is contained in "features.txt".


