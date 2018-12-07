## load required libraries
library(dplyr)

## Read in training and test sets
X_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
subjects_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

X_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
subjects_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

## Merge training and test sets into one data set.
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
subjects <- rbind(subjects_test, subjects_train)

## first clean up round
remove(X_test, y_test, subjects_test, X_train, y_train, subjects_train)

## Read in information about the data features and labels
activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")
features <- read.table("./UCI_HAR_Dataset/features.txt")

## extract measurements of means and standard deviations
mean_std_indices <- sort(c(grep("mean()", features$V2, value = FALSE, fixed = TRUE), grep("std()", features$V2, value = FALSE, fixed = TRUE)))
X <- X[, mean_std_indices]

## replace indices by descriptive activity names to name the activities
activity_labels <- mutate(activity_labels, V2 = sub("_", "", tolower(V2)))
y_activities <- mutate(y, activity = activity_labels$V2[V1])

## appropriately label variables in features
features <- mutate(features, V2 =  gsub("\\(\\)", "", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("Acc", "LinearAcceleration", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("fGravity", "FrequencyDomainSignalGravity", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("fBody", "FrequencyDomainSignalBody", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("tGravity", "TimeDomainSignalGravity", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("tBody", "TimeDomainSignalBody", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("Gyro", "AngularVelocity", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("mean", "Mean", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("Jerk", "Derivative", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("Mag", "EuclideanNorm", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("std", "StandardDeviation", gsub("\\-", "", V2)))
features <- mutate(features, V2 =  gsub("BodyBody", "Body", gsub("\\-", "", V2)))
names(X) <- features$V2[mean_std_indices]

## tidy data 1: add activity name by row.names and remove superficial row.names column again
X <- merge(select(y_activities, activity), X, by = 0)
X <- select(X, -Row.names)


## tidy data 2: add subjects data by row.names and remove superficial row.names column again
subjects <- rename(subjects, subjectnumber = V1)
X <- merge(select(subjects, subjectnumber), X, by = 0)
X <- select(X, -Row.names)

## tidy data 3: group by subjectnumber and activity and take average of each variable within group
X <- aggregate(X[, 3:ncol(X)],
          list(subjectnumber = X$subjectnumber,
               activity = X$activity),
          mean, na.rm=TRUE)

## create csv file with tidy data set
write.csv(X, "./UCI_HAR_Dataset_tidy/average_by_subjectnumber_and_activity.csv")

## final clean up round
remove(X, activity_labels, features, subjects, y, y_activities, mean_std_indices)