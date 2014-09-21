Code book for the data generated on Coursera's Get and Cleaning Data course project
---------

**General Description**

This code book describes tha data contained in the FinalData.txt file on this Github repository. This file was generated on 
Coursera's Get and Cleaning Data course project. The original data used to generate the FinalData.txt was collected from 
the accelerometers from the Samsung Galaxy S smartphone and may be found on [this link]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The transformations/modifications 
on the original data are described below as well as the variables on FinalData.txt file.

**Data Description**

The transformations performed on the original data followed the sequence of actions required in the project's assignment:

1) Merges the training and the test sets to create one data set.

The original files were separated and it was necessary to bind them together. The following image presented by 
Coursera's CTA David Hood on [this discussion forum](https://class.coursera.org/getdata-007/forum/thread?thread_id=49) shows how the files should be linked together: 

![image1](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

As described on the original experiment's README.txt, many estimates were performed on the collected data. The mean and 
standard deviation estimates were extracted from the original data to make the FinalData.txt.

3) Uses descriptive activity names to name the activities in the data set

A total of 6 activities were performed by the 30 volunteers that were participating on the experiment. In the original file, the activities were identified by their id number. In FinalData.txt, the activities are identified by their descriptive names.

4) Appropriately labels the data set with descriptive variable names. 

The whole data frame had their variables renamed to descriptive names. 

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This is the data frame that generated FinalData.txt.

**Variables Description**

Subject
-----
Id number assigned to a volunteer.

Values - 1..30

Activity
-----
Descriptive name of the activity performed by a volunteer while collecting data.

Values

* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

Data
----
The other 66 columns contain data that was collected in the original experiment and modified in this current project according to the previous description in this code book (Data Description). The row values (observations) are normalized and bounded within [-1,1]. Each variable name consists of a sequence of characters which indicate the registered measurement/estimate. **It is worth noting that each observation for each subject and activity is the average of the measurement/estimate indicated in the variable name. For instance, "tBodyAcc-mean()-X" actually represents the average of "tBodyAcc-mean()-X" for each subject and activity.** The character sequences that make the variable name are explained below:

t - time domain signals

f- frequency domain signals

Body - body acceleration signal

Gravity - gravity acceleration signal

Acc - accelerometer raw signal

Gyro - gyroscope 3-axial raw signal

Jerk - time derivation of body linear acceleration and angular velocity - Jerk signal

Mag - magnitude of three-dimensional signals calculated using the Euclidean norm

mean() - mean estimation from the original signals

std() - standard deviation estimation from the original signals

-XYZ - denotes 3-axial signals in the X, Y and Z directions

It follows the complete list of variable names:
"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y" 

"tBodyAcc-mean()-Z" 

"tBodyAcc-std()-X" 

"tBodyAcc-std()-Y" 

"tBodyAcc-std()-Z" 

"tGravityAcc-mean()-X" 

"tGravityAcc-mean()-Y" 

"tGravityAcc-mean()-Z" 

"tGravityAcc-std()-X" 

"tGravityAcc-std()-Y" 

"tGravityAcc-std()-Z" 

"tBodyAccJerk-mean()-X" 

"tBodyAccJerk-mean()-Y" 

"tBodyAccJerk-mean()-Z" 

"tBodyAccJerk-std()-X" 

"tBodyAccJerk-std()-Y" 

"tBodyAccJerk-std()-Z" 

"tBodyGyro-mean()-X" 

"tBodyGyro-mean()-Y" 

"tBodyGyro-mean()-Z" 

"tBodyGyro-std()-X" 

"tBodyGyro-std()-Y" 

"tBodyGyro-std()-Z" 

"tBodyGyroJerk-mean()-X" 

"tBodyGyroJerk-mean()-Y" 

"tBodyGyroJerk-mean()-Z" 

"tBodyGyroJerk-std()-X" 

"tBodyGyroJerk-std()-Y" 

"tBodyGyroJerk-std()-Z" 

"tBodyAccMag-mean()" 

"tBodyAccMag-std()" 

"tGravityAccMag-mean()" 

"tGravityAccMag-std()" 

"tBodyAccJerkMag-mean()" 

"tBodyAccJerkMag-std()" 

"tBodyGyroMag-mean()" 

"tBodyGyroMag-std()" 

"tBodyGyroJerkMag-mean()" 

"tBodyGyroJerkMag-std()" 

"fBodyAcc-mean()-X" 

"fBodyAcc-mean()-Y" 

"fBodyAcc-mean()-Z" 

"fBodyAcc-std()-X" 

"fBodyAcc-std()-Y" 

"fBodyAcc-std()-Z" 

"fBodyAccJerk-mean()-X" 

"fBodyAccJerk-mean()-Y" 

"fBodyAccJerk-mean()-Z" 

"fBodyAccJerk-std()-X" 

"fBodyAccJerk-std()-Y" 

"fBodyAccJerk-std()-Z" 

"fBodyGyro-mean()-X" 

"fBodyGyro-mean()-Y" 

"fBodyGyro-mean()-Z" 

"fBodyGyro-std()-X" 

"fBodyGyro-std()-Y" 

"fBodyGyro-std()-Z" 

"fBodyAccMag-mean()" 

"fBodyAccMag-std()" 

"fBodyBodyAccJerkMag-mean()" 

"fBodyBodyAccJerkMag-std()" 

"fBodyBodyGyroMag-mean()" 

"fBodyBodyGyroMag-std()" 

"fBodyBodyGyroJerkMag-mean()" 

"fBodyBodyGyroJerkMag-std()"