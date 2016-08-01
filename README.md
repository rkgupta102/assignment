# assignment
#Getting and cleaning data- assignment
=========================================================================
A script named run_analysis.R is enclosed which does the following 
desired task with the provided data set and generates a new data set
"tidy_dataset.txt" 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation 
for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data 
set with the average of each variable for each activity and each subject.
=========================================================================

Before going further, set the working directory to the location where features.txt, 
features_info.txt, README.txt etc files of the provided data set is lying.

After running the script, the tidy data set named "tidy_dataset.txt" will
generate in the working directory location. 

To read the generated tidy data set in R, do the following. 
tidy_data_set<-read.table("tidy_dataset.txt")

==========================================================================

CodeBook.md explains all the data sets and variables used in the r script. Kindly refer it. 

