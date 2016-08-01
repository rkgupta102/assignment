#This script will generate a tidy data set. 

#Before going further, set the working directory to the location where 
# features.txt, features_info.txt, README.txt etc files of the concerned data 
# set is lying. 


library(reshape2)
# First, we need to make train and test data sets readable. 
# Collecting name of 561 features from features.txt and saving it in "feature_name".

features<-read.table("features.txt")
feature_name<-features[,2]

# Reading activity labels and assigning name to the columns.

activity_label<-read.table("activity_labels.txt", col.names = c("activity_no", "activity"))

#Reading training data set which contains variables as features. 
#Assigning name to the columns. 

training_set<-read.table("train/X_train.txt")
colnames(training_set)<-feature_name

#Reading training labels(which are same as activity_no) of 7352 no. of observations.

training_labels<-read.table("train/y_train.txt", col.names="activity_no")

#Reading test data set which contains variables as features. 
#Assigning name to the columns

test_set<-read.table("test/X_test.txt")
colnames(test_set)<-feature_name

#Reading test labels(which are same as activity_no)of 2947 no. of  observations.

test_labels<-read.table("test/y_test.txt", col.names="activity_no")

#Reading subject no. (identity) of train and test data
subject_train<-read.table("train/subject_train.txt", col.names="subject_no")
subject_test<-read.table("test/subject_test.txt", col.names="subject_no")

#combining subject_no., activity_no and corresponing features 
#For test and train data 

data_train<-cbind(subject_train, training_labels, training_set)
data_test<-cbind(subject_test, test_labels, test_set)

#1. Merges the training and the test sets to create one data set.
# Row wise combining train and test data
data<-rbind(data_train, data_test)

#2. Extracts only the measurements on the
#  mean and standard deviation for each measurement.

# the variables which has measurements on mean and standard devation

req_var<-grep("mean|std", feature_name, ignore.case = "TRUE", value=TRUE)

meanstd_data<-data[, c("subject_no", "activity_no", req_var)]

#3. Uses descriptive activity names to name the activities in the data set.
#adding activity name to the data

data_descrp<-merge(activity_label,meanstd_data,by.x = "activity_no", by.y = "activity_no", all=TRUE)

#4. Appropriately labels the data set with descriptive variable names.

data_descriptive <- melt(data_descrp,id=c("activity_no","activity","subject_no"))

#5.creating a another independent tidy data set with the average of each variable 
# for each activity and each subject.

mean_descr_data <- dcast(data_descriptive,activity_no + activity + subject_no ~ variable,mean)

## Create a file with the new tidy dataset
write.table(mean_descr_data,"tidy_dataset.txt", row.name=FALSE)

##To read the tidy data set. Do the following. 
##tidy_data_set<-read.table("tidy_dataset.txt")
