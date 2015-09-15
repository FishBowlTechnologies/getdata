library(reshape2)

##read the data from working directory

# read the activity and features
activity_lables <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity_lables)<-c('S.no','activity')
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(features)<-c('S.no','feature')


#read train subject sets and labels
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

#read test subject sets and labels
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")


## STEP 1: Merges the training and the test sets to create one data set

subjects <-rbind(subject_train,subject_test)
labels <- rbind(y_train,y_test)
data_sets <- rbind(X_train,X_test)


## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement

features_name <- as.vector(features$feature)
# return positon of features which include mean or standard deviation
features_mean_std_index <- grep('mean\\(\\)|std\\(\\)',features_name)
# select only those columns that includes the data of mean or standard deviation
data_sets_mean_std <- data_sets[,features_mean_std_index]


## STEP 3: Uses descriptive activity names to name the activities in the data set

# replace the the activity number in labels with activity name 
labels <- as.data.frame(sapply(labels,function(x) activity_lables[x,'activity']))
data_sets_mean_std <- cbind(labels,data_sets_mean_std)


## STEP 4: Appropriately labels the data set with descriptive variable names

# select the features name and make it more human readable
features_name <- features_name[features_mean_std_index]
features_name <- gsub('\\(\\)',"",features_name)
features_name <- gsub('std',"standardDeviation",features_name)
features_name <- gsub ('^t',"time",features_name)
features_name <- gsub ('^f',"frequency",features_name)
features_name <- gsub('Acc',"Accelerometer",features_name)
features_name <- gsub('Gyro',"Gyroscope",features_name)
features_name <- gsub('Mag',"Magnitude",features_name)

# labels the data sets
colnames(data_sets_mean_std)[1] <- 'activity'
colnames(data_sets_mean_std)[2:ncol(data_sets_mean_std)] <- features_name


## STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy_data_sets <- cbind(subjects,data_sets_mean_std)
colnames(tidy_data_sets)[1]<-c('subject')
tidyMelt <- melt(tidy_data_sets,id=c(colnames(tidy_data_sets)[1:2]),measure.vars = c(colnames(tidy_data_sets)[3:ncol(tidy_data_sets)]))
tidy_data_sets_final <- dcast(tidyMelt, subject + activity~ variable,mean)

## Create a tidy data sets file

write.table(tidy_data_sets_final,"./tidydata.txt",row.names = FALSE)