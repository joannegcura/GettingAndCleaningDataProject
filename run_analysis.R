# Using data collected from the accelerometers from the Samsung Galaxy S 
# smartphone, this R script will produce a clean data set into a file 
# named "tidydata.txt". See README.md for details.

# Use libraries
library(data.table)
library(dplyr)

filename <- "getdata_dataset.zip"

# Download and unzip the dataset if it does not exist.
if (!file.exists(filename)) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Read the data
featureNames <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Format and read training and test data sets
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainFeatures <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
testFeatures <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

# Merge the training and the test sets to create one data set
subject <- rbind(trainSubject, testSubject)
activity <- rbind(trainActivity, testActivity)
features <- rbind(trainFeatures, testFeatures)

# Name the columns and merge the data
colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
allData <- cbind(features,activity,subject)

# Extract the measurements on the mean and standard deviation for each measurement
colsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(allData), ignore.case=TRUE)
requiredColumns <- c(colsWithMeanSTD, 562, 563)
extractedData <- allData[,requiredColumns]

# Use descriptive activity names to name the activities in the data set
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6) {
	extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}
extractedData$Activity <- as.factor(extractedData$Activity)

# Label the data set with descriptive variable names
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

# Create a second independent tidy data set with 
# the average of each variable for each activity and each subject and
# write the data set to the tidydata.txt file
extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)
tidyDataSet <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyDataSet <- tidyDataSet[order(tidyDataSet$Subject,tidyDataSet$Activity),]
write.table(tidyDataSet, file = "tidydata.txt", row.names = FALSE)

