// ##1.Merges the training and the test sets to create one data set.
##2.Extracts only the measurements on the mean and standard deviation for each measurement.
##3.Uses descriptive activity names to name the activities in the data set
##4.Appropriately labels the data set with descriptive variable names.
##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
ls()
rm(list=ls())
########################################
filename <- "getdata.zip"

## Download and unzip the dataset
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

## Loading the activity label dataset
activityLabel<- read.table("UCI HAR Dataset/activity_labels.txt")

## Loading features dataset
features<- read.table("UCI HAR Dataset/features.txt")

## loading test and train dataset
subjecttest<-read.table("UCI HAR Dataset/test/subject_test.txt")
subjecttrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
ytest<-read.table("UCI HAR Dataset/test/Y_test.txt")
ytrain<-read.table("UCI HAR Dataset/train/Y_train.txt")
##################################################
#Setting activity labels & feature names to the test dataset
# Assigin column names to the data imported above
colnames(activityLabel)<- c("activityId","activityType")
colnames(subjecttest)<- c("Subject")
colnames(xtest)<-features[,2]
colnames(ytest)<-c("activityId")
# Create the final testing set by merging ytest, subjecttest, and xtest
testData = cbind(ytest,subjecttest,xtest)
head(testData)
################
#Setting activity labels & feature names to the test dataset
colnames(subjecttrain)<-c("Subject")
colnames(xtrain)<-features[,2]
colnames(ytrain)<-c("activityId")
## Create the final training set by merging ytrain, subjecttrain, and xtrain
trainData= cbind(ytrain,subjecttrain,xtrain)
head(trainData)
##################
# Create final datasetmerging train data and test data
finaldataset<- rbind(trainData,testData)
##################
#Extract only the measurements on the mean and standard deviation for each measurement. 
# Extracting only features with mean and std in the column names
std<-features[grep("std()",features$V2),]
mean<-features[grep("mean()",features$V2,fixed=TRUE),]
final<-finaldataset[,colnames(finaldataset) %in% std$V2|colnames(finaldataset) %in% mean$V2 ]
final<-cbind(finaldataset[,1:2],final)

#Tidy dataset with the average of each variable for each activity and each subject
library(dplyr)
tidydata<-final%>%group_by(activityId,Subject)%>%summarise_all(funs(mean))
names(tidydata)
write.table(tidydata,file="TidyData.txt",row.names = FALSE)
