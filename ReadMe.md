Readme file for Coursera's Get and Cleaning Data course project
---------
**In order for the analysis to run it is necessary to download and unzip the corresponding data files to the working directory in R**

[Data files link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

**How the script works (run_analysis.R)**

The script actions are explained below showing how each of the steps proposed on the project's assignment were achieved. 

For further reference see the script itself.

**STEP 1**

    1.1 - Reads both the test (X_test.txt) and training (X_train.txt) files into R using  read.table()
    1.2 - Binds the two data frames using rbind()

**STEP 2**

    2.1 - Reads the features file (features.txt) into R using read.table(). The features data frame corresponds to the column names of the measured quantities (measurements).
    2.2 - From the features data frame, selects the measurements that strictly carry 'mean()' or 'std()' in their names. NOTE: meanFreq() was not included as it consists in a different operation according to features_info.txt.
    2.3 - Subsets the data frame obtained in 1.2 according to the selection criteria in 2.2

**STEP 3**

    3.1 - Reads the subject files (subject_test.txt and subject_train.txt) and activity files (y_test.txt and y_train.txt) into R using read.table(). NOTE: at this point activity names are not descriptive ones.
    3.2 - Reads the descriptive activity labels into R using read.table().
    3.3 - Replaces the activity labels by descriptive ones.
    3.4 - Creates complete subject and activity data frames including train and test observations.
    3.5 - Binds the data frame obtained in 2.3 with the activity (now with descriptive names) and subject data frames using cbind()

**STEP 4**

    4.1 - Labels the data frame obtained in 3.5 with descriptive variable names. NOTE: the variable names are those selected from step 2.2 and also "Subject" and "Activity"

**STEP 5** 

    5.1 - Creates an independent tidy data set containing the average of each variable for each activity and subject. NOTE: used melt() and dcast() from reshape2 package.