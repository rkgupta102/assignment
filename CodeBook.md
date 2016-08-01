Description of the variable, the data sets and the transformation work carried out in R script : 

1. features : The data frame that contains name of the 561 features along with their serial number. 

2. feature_name: The vector which just contains name of the 561 features. 

3. activity_label:The data frame that contains name of the activity and their identity number.

4. training_set: The data frame having 7352 observations along with 561 features for each observation. 

5. training_labels: Contains activity number for each of 7352 observations. 

6. test_set: The data frame having 2947 observations along with 561 features for each observation. 

7. test_labels: Contains activity number for each of 2947 test observations. 

8. subject_train: contains subject number for each of 7352 train observations.

9. subject_test:  contains subject number for each of 2947 test observations.

10. data_train: The data frame that contains subject_no., activity_no and corresponing 561 features for 7352 
    train observations. 

11. data_test: The data frame that contains subject_no., activity_no and corresponing 561 features for 2947 
    test observations. 

12. data : The data frame that contains subject_no., activity_no and corresponing 561 features for all the observations. 
   
13. req_var: the features that has measurements on mean or standard deviation. 

14. meanstd_data: part of the data frame "data" that contains features which measures some sort of mean
& standard deviation.

15.data_descrp : In addition to meanstd_data frame , this data frame also mentions description of the activity
for each observation. 

16. data_descriptive: It is melting of data_descrp. A data frame that contains a variable named "variable" which 
has all the "feature name" and their corresponding value as another variable for the same set of variable 
with name "activity_no", "activity" and "subject_no".

17. mean_descr_data : Final  tidy data set with the average of each feature variable for each activity and each subject.

