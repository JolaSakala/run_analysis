# CodeBook for the tidy.txt dataset created by run_analysis.R
*Nathaniel B. Moody, 4 December 2016*


## Original Dataset: 
*(The following dataset was utilized by the run_analysis.R script, to create the tidy.txt dataset:)*
>#####==================================================================
>#####Human Activity Recognition Using Smartphones Dataset
>#####Version 1.0
>#####==================================================================
>#####Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
>#####Smartlab - Non Linear Complex Systems Laboratory
>#####DITEN - Università degli Studi di Genova.
>#####Via Opera Pia 11A, I-16145, Genoa, Italy.
>#####activityrecognition@smartlab.ws
>#####www.smartlab.ws
>#####==================================================================
>#####This data can be accessed, in raw form, at the following url:
>#####https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
>#####==================================================================




## Key Factors for this dataset:
* Subject *(1-30)*
* Activity *(6 levels, details below)*

## Activities:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

## Variables:
*(The numbers that begin each variable correspond to their place in the original dataset, cited above.)*
* 1tBodyAcc-mean()-X
* 2tBodyAcc-mean()-Y
* 3tBodyAcc-mean()-Z
* 4tBodyAcc-std()-X
* 5tBodyAcc-std()-Y
* 6tBodyAcc-std()-Z
* 41tGravityAcc-mean()-X
* 42tGravityAcc-mean()-Y
* 43tGravityAcc-mean()-Z
* 44tGravityAcc-std()-X
* 45tGravityAcc-std()-Y
* 46tGravityAcc-std()-Z
* 81tBodyAccJerk-mean()-X
* 82tBodyAccJerk-mean()-Y
* 83tBodyAccJerk-mean()-Z
* 84tBodyAccJerk-std()-X
* 85tBodyAccJerk-std()-Y
* 86tBodyAccJerk-std()-Z
* 121tBodyGyro-mean()-X
* 122tBodyGyro-mean()-Y
* 123tBodyGyro-mean()-Z
* 124tBodyGyro-std()-X
* 125tBodyGyro-std()-Y
* 126tBodyGyro-std()-Z
* 161tBodyGyroJerk-mean()-X
* 162tBodyGyroJerk-mean()-Y
* 163tBodyGyroJerk-mean()-Z
* 164tBodyGyroJerk-std()-X
* 165tBodyGyroJerk-std()-Y
* 166tBodyGyroJerk-std()-Z
* 201tBodyAccMag-mean()
* 202tBodyAccMag-std()
* 214tGravityAccMag-mean()
* 215tGravityAccMag-std()
* 227tBodyAccJerkMag-mean()
* 228tBodyAccJerkMag-std()
* 240tBodyGyroMag-mean()
* 241tBodyGyroMag-std()
* 253tBodyGyroJerkMag-mean()
* 254tBodyGyroJerkMag-std()
* 266fBodyAcc-mean()-X 
* 267fBodyAcc-mean()-Y
* 268fBodyAcc-mean()-Z
* 269fBodyAcc-std()-X
* 270fBodyAcc-std()-Y
* 271fBodyAcc-std()-Z
* 345fBodyAccJerk-mean()-X
* 346fBodyAccJerk-mean()-Y
* 347fBodyAccJerk-mean()-Z
* 348fBodyAccJerk-std()-X
* 349fBodyAccJerk-std()-Y
* 350fBodyAccJerk-std()-Z
* 424fBodyGyro-mean()-X
* 425fBodyGyro-mean()-Y 
* 426fBodyGyro-mean()-Z
* 427fBodyGyro-std()-X
* 428fBodyGyro-std()-Y
* 429fBodyGyro-std()-Z
* 503fBodyAccMag-mean()
* 504fBodyAccMag-std()
* 516fBodyBodyAccJerkMag-mean()
* 517fBodyBodyAccJerkMag-std()
* 529fBodyBodyGyroMag-mean()
* 530fBodyBodyGyroMag-std()
* 542fBodyBodyGyroJerkMag-mean()
* 543fBodyBodyGyroJerkMag-std()
