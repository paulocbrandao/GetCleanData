##reads the test set into R [2947 x 561]
testData<-read.table("./test/X_test.txt")

##reads the training set into R [7352 x 561]
trainData<-read.table("./train/X_train.txt") 

##PROJECT STEP 1 - Merges the training and the test sets to create one data set.
##puts the last two data frames together in a bigger data frame [10299 x 561]
df<-rbind(trainData,testData) 

##reads the features into R (variable names)
features<-read.table("features.txt")

##selects the features that calculate mean and standard deviation
##the double backslashes \\ are necessary as ( and ) are reserved characters
sel<-sort(union(grep("mean\\(\\)",features$V2),grep("std\\(\\)",features$V2)))

##PROJECT STEP 2
##Extracts only the measurements on the mean and standard deviation for each measurement.
df.1<-subset(df, select=sel)

##reads part of the subjects and activities into R (observations)
sub_test<-read.table("./test/subject_test.txt")
y_test<-read.table("./test/y_test.txt",colClasses="character")

##reads the rest of the subjects and activities into R (observations)
sub_train<-read.table("./train/subject_train.txt")
y_train<-read.table("./train/y_train.txt", colClasses="character")

##reads the descriptive activity labels into R
activityLabel<-read.table("./activity_labels.txt", colClasses="character")

##replaces the labels in activity vectors by descriptive ones

y_train[which(y_train=="1"),1]<-activityLabel$V2[1]
y_train[which(y_train=="2"),1]<-activityLabel$V2[2]
y_train[which(y_train=="3"),1]<-activityLabel$V2[3]
y_train[which(y_train=="4"),1]<-activityLabel$V2[4]
y_train[which(y_train=="5"),1]<-activityLabel$V2[5]
y_train[which(y_train=="6"),1]<-activityLabel$V2[6]

y_test[which(y_test=="1"),1]<-activityLabel$V2[1]
y_test[which(y_test=="2"),1]<-activityLabel$V2[2]
y_test[which(y_test=="3"),1]<-activityLabel$V2[3]
y_test[which(y_test=="4"),1]<-activityLabel$V2[4]
y_test[which(y_test=="5"),1]<-activityLabel$V2[5]
y_test[which(y_test=="6"),1]<-activityLabel$V2[6]


##creates complete subject and activity data frames to be included in the data
subject<-rbind(sub_train,sub_test)
activity<-rbind(y_train,y_test)

##STEP 3 - Uses descriptive activity names to name the activities in the data set
##creates the dataset including subject and activity columns
df.2<-cbind(df.1,subject,activity)

## STEP 4 - Appropriately labels the data set with descriptive variable names. 
names(df.2)<-c(as.character(features$V2[sel]),"Subject","Activity")


##STEP 5 - From the data set in step 4, creates a second, independent tidy 
##data set with the average of each variable for each activity and each subject.
library(reshape2)
dfMelt<-melt(df.2,id=c("Subject","Activity"))
FinalData<-dcast(dfMelt, Subject+Activity ~ variable,mean)

