# Course Project for Getting and Cleaning Data, Week 4: run_analysis.R
### This repository contains the script, dataset, codebook, and README of the Getting and Cleaning Data Week 4 project.
### *Completed by Nathaniel B. Moody*

## The run_analysis.R script executes the following:
1. Loads the dplyr and reshape2 packages.
2. Downloads the raw data.zip file into a unique directory, after checking to make certain it is not already there.
3. Reads in the various tables, after checking to make certain this part of the script has not already run.
4. Combines the various tables into one dataset.
5. Applies descriptive variable names from the separate features.txt file.
6. Replaces the activity numerals with descriptive activity names from the separate activity_labels.txt file.
7. Turns the "subject" and "activity" columns into factors.
8. Searches the entire dataset for only the mean() and std() variables, selects out only these, then arranges based on subject.

## Once this initial dataset is created, the script generates the final, tidy dataset requested:
1. Melt the dataset under subject and activity.
2. Cast the variable means as a new data frame by subject and acitivty.
3. Write this new, tidy dataset to the tidy.txt file.

*The tidy.txt data can be read cleanly into R using the following command: read.table("tidy.txt", header=TRUE)*



