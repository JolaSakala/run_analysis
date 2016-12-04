# run_analysis.R, by Nathaniel Moody
# Submitted in fulfillment of Getting and Cleaning Data, week 4
library(dplyr)
library(reshape2)

# Download and unzip the data into a unique directory.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./analysis/data.zip")) {
    download.file(url, destfile = "./analysis/data.zip")
    unzip("./analysis/data.zip", exdir = "./analysis")
}


# Read in all relevant tables from the test and train datasets.
# Because this is a time-consuming operation, this first checks to make sure
# it has not already been performed by looking for the last variable, trainy.
vars <- ls()
if(!is.element("trainy", vars)) {
    testsub <- read.table("./analysis/UCI HAR Dataset/test/subject_test.txt")
    testx <- read.table("./analysis/UCI HAR Dataset/test/X_test.txt")
    testy <- read.table("./analysis/UCI HAR Dataset/test/y_test.txt")
    
    trainsub <- read.table("./analysis/UCI HAR Dataset/train/subject_train.txt")
    trainx <- read.table("./analysis/UCI HAR Dataset/train/X_train.txt")
    trainy <- read.table("./analysis/UCI HAR Dataset/train/y_train.txt")
}


# Combine the respective tables from their various parts, forming two complete data frames.
# Then combine the two frames into one complete dataset.
testdata <- cbind(testsub, testy, testx)
traindata <- cbind(trainsub, trainy, trainx)
alldata <- rbind(traindata, testdata)


# Replace the column names with descriptive terms and the features.txt file.
# then replace the activity-label numerals with actual descriptive labels from the activity_labels.txt file.
features <- read.table("./analysis/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
features <- as.vector(features[,2])
i <- 1
while(i <= length(features)) { # This loop resolve R's struggle with the variable names from features.txt.
    features[i] <- paste(i, features[i], sep = "")
    i <- i +1
}
colnames(alldata) <- c("subject", "activity", features)
activityLabels <- read.table("./analysis/UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
alldata$activity <- factor(alldata$activity, levels = activityLabels[,1], labels = activityLabels[,2])
alldata$subject <- as.factor(alldata$subject)


# Now that the dataset is complete and labeled descriptively, select out only the desired variables (mean and std).
mscols <- grep("(.*)std(.*)|(.*)mean[^F](.*)", features[1:561])
mscols <- sapply(mscols, function(x){x <- x+2}) # This corrects for the addition of the "subject" and "activity" columns.
alldata <- alldata[,c(1:2, mscols)]
alldata <- arrange(alldata, subject)


# To complete the final task for this project, melt the dataframe under subject and activity,
# then cast the variale means by subject and activity, using the reshape2 package.
# Write this new dataset to a txt file that can be read in, in tidy form, using: read.table("tidy.txt", header=TRUE)
meltdata <- melt(alldata, id = c("subject", "activity"))
meandata <- dcast(meltdata, subject + activity ~ variable, mean)
write.table(meandata, "./analysis/tidy.txt", row.names = FALSE, quote = FALSE)




