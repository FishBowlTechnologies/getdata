## Variables
* activity_lables : read the activity labels from activity_lables.txt
*  features : read the features from features.txt
* subject_train : read the subjects id for training
* Xtrain : read the dataset of train
* y_train : read activity label number for train datasets 
* subject_test : read the subjects id for testing
* X_test : read the dataset of test
* y_test : read activity label number for test datasets 
* subjects : merges the subject_train and subject_test
* labels : merges y_train and y_test
* data_sets : merges X_train and X_test
* features_name : create the vector of feature name from features
* features_mean_std_index : get the postion of features which contain mean() or std() from features_name
* data_sets_mean_std : only extract those columns containing mean() or std() measures from data_sets
* tidy_data_sets : create the tidy datasets by merging subjects in data_sets_std
* tidyMelt : converts the tidy_data_sets into castable melted form, where all measured variables have been split into variable and value columns except subject and activity
* tidy_data_sets_final : create the tidy datasets with average of each variable for each activity and each subject, and coverts it to wide form



## Complete list of Features
* subject
* activity
* timeBodyAccelerometer-mean-X
* timeBodyAccelerometer-mean-Y
* timeBodyAccelerometer-mean-Z
* timeBodyAccelerometer-standardDeviation-X
* timeBodyAccelerometer-standardDeviation-Y
* timeBodyAccelerometer-standardDeviation-Z
* timeGravityAccelerometer-mean-X
* timeGravityAccelerometer-mean-Y
* timeGravityAccelerometer-mean-Z
* timeGravityAccelerometer-standardDeviation-X
* timeGravityAccelerometer-standardDeviation-Y
* timeGravityAccelerometer-standardDeviation-Z
* timeBodyAccelerometerJerk-mean-X
* timeBodyAccelerometerJerk-mean-Y
* timeBodyAccelerometerJerk-mean-Z
* timeBodyAccelerometerJerk-standardDeviation-X
* timeBodyAccelerometerJerk-standardDeviation-Y
* timeBodyAccelerometerJerk-standardDeviation-Z
* timeBodyGyroscope-mean-X
* timeBodyGyroscope-mean-Y
* timeBodyGyroscope-mean-Z
* timeBodyGyroscope-standardDeviation-X
* timeBodyGyroscope-standardDeviation-Y
* timeBodyGyroscope-standardDeviation-Z
* timeBodyGyroscopeJerk-mean-X
* timeBodyGyroscopeJerk-mean-Y
* timeBodyGyroscopeJerk-mean-Z
* timeBodyGyroscopeJerk-standardDeviation-X
* timeBodyGyroscopeJerk-standardDeviation-Y
* timeBodyGyroscopeJerk-standardDeviation-Z
* timeBodyAccelerometerMagnitude-mean
* timeBodyAccelerometerMagnitude-standardDeviation
* timeGravityAccelerometerMagnitude-mean
* timeGravityAccelerometerMagnitude-standardDeviation
* timeBodyAccelerometerJerkMagnitude-mean
* timeBodyAccelerometerJerkMagnitude-standardDeviation
* timeBodyGyroscopeMagnitude-mean
* timeBodyGyroscopeMagnitude-standardDeviation
* timeBodyGyroscopeJerkMagnitude-mean
* timeBodyGyroscopeJerkMagnitude-standardDeviation
* frequencyBodyAccelerometer-mean-X
* frequencyBodyAccelerometer-mean-Y
* frequencyBodyAccelerometer-mean-Z
* frequencyBodyAccelerometer-standardDeviation-X
* frequencyBodyAccelerometer-standardDeviation-Y
* frequencyBodyAccelerometer-standardDeviation-Z
* frequencyBodyAccelerometerJerk-mean-X
* frequencyBodyAccelerometerJerk-mean-Y
* frequencyBodyAccelerometerJerk-mean-Z
* frequencyBodyAccelerometerJerk-standardDeviation-X
* frequencyBodyAccelerometerJerk-standardDeviation-Y
* frequencyBodyAccelerometerJerk-standardDeviation-Z
* frequencyBodyGyroscope-mean-X
* frequencyBodyGyroscope-mean-Y
* frequencyBodyGyroscope-mean-Z
* frequencyBodyGyroscope-standardDeviation-X
* frequencyBodyGyroscope-standardDeviation-Y
* frequencyBodyGyroscope-standardDeviation-Z
* frequencyBodyAccelerometerMagnitude-mean
* frequencyBodyAccelerometerMagnitude-standardDeviation
* frequencyBodyBodyAccelerometerJerkMagnitude-mean
* frequencyBodyBodyAccelerometerJerkMagnitude-standardDeviation
* frequencyBodyBodyGyroscopeMagnitude-mean
* frequencyBodyBodyGyroscopeMagnitude-standardDeviation
* frequencyBodyBodyGyroscopeJerkMagnitude-mean
* frequencyBodyBodyGyroscopeJerkMagnitude-standardDeviation
