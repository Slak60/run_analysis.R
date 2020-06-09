temp <- tempfile() ## create a temp file to download the .zip file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp)##download zip file
UCIHARDataset = unzip(temp)## unzip file

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",quote="\"", comment.char="")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt" , quote="\"", comment.char="")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",quote="\"", comment.char="")## read X_test file
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",quote="\"", comment.char="")## read Y_test file
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="") ## read subject_test file
activity <- read.table("./UCI HAR Dataset/activity_labels.txt",sep="")
features <- read.table("./UCI HAR Dataset/features.txt")
## 1.Merges the training and test data sets to create one data set
merged_XY_subject_train <- cbind(X_train, Y_train, subject_train)
merged_XY_subject_test <- cbind(X_test, Y_test,subject_test)
merged_data <- rbind(merged_XY_subject_train, merged_XY_subject_test)
merged_partial_data <- merged_data[, 1:561]
activity_name <- merged_data[, 562:563]

## 2. Extract only measurements on the mean and standard deviation for each measurements
features <- as.character(features[,2])
names(merged_partial_data) <- features ##named variables V1, V2..V561 with the varibles names from features file
mean_col <- as.character(grep("mean", names(merged_partial_data)))## extract only columns with word "mean" in the variable name
std_col <- as.character(grep("std", names(merged_partial_data))) ## extract only columns with word "std" in the variable name
col_mean_std <- sort(as.numeric(c(mean_col,std_col)))
narrow_data <- merged_partial_data[,col_mean_std] ## extract only those columns with the measurements on the mean and standard deviation for each measurement

## 3. Use descriptive activity names to the activities in the data set
activities <- character(10299)
WALKING = grepl("1", activity_name[,1]) ## group_by walking
WALKING_UPSTAIRS <- grepl("2", activity_name[,1])## group_by walking_upstairs
WALKING_DOWNSTAIRS <- grepl("3", activity_name[, 1])## group_by walking_downstairs
SITTING <- grepl("4",activity_name[, 1])## group_by sitting
STANDING <- grepl("5", activity_name[, 1])## group_by standing
LAYING <- grepl("6", activity_name[,1])## group_by laying
activities[WALKING] <- c("WALKING")
activities[WALKING_UPSTAIRS] <- c("WALKING_UPSTAIRS")
activities[WALKING_DOWNSTAIRS] <- c("WALKING_DOWNSTAIRS") 
activities[SITTING] <- c("SITTING")
activities[STANDING] <- c("STANDING")
activities[LAYING] <- c("LAYING")

## 4. appropriately labels the data set with descriptive variable names
names(narrow_data) <- gsub ("Acc","Acceleration", names(narrow_data))
names(narrow_data) <- gsub ("std","Standard Deviation", names(narrow_data))
names(narrow_data) <- gsub ("Gyro","Gyroscope", names(narrow_data))
names(narrow_data) <- gsub ("tGravity","Time:Gravity", names(narrow_data))
names(narrow_data) <- gsub ("tBody","Time:Body", names(narrow_data))
names(narrow_data) <- gsub ("fBody","Frequency:Body", names(narrow_data))
names(narrow_data) <- gsub ("Mag","Magnitude", names(narrow_data))
Subject <- merged_data[, 563]

##5. From the data set of step 4, creates a second independent tidy data set with the average of each variable
## for each activity and each subject
tidy_data_set <- aggregate(narrow_data,by=list(Subject=Subject,Activities=activities), mean)

