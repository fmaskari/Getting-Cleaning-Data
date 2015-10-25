# Getting & Cleaning Data Course Project

The course project involved reading in and analyzing data from the Human Activity Recognition Using Smartphones Data Set from a University of California Irvine study. The output of the script written should be a tidy data set.

## Files that will be used from the downloaded dataset include:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt' : identifies the subject who performed the activity in Training set
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': identifies the subject who performed the activity in Test set

## Steps BEFORE running the script:
1. Download the zip file into your WORKING DIRECTORY from this url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the file using the code: unzip("getdata-projectfiles-UCI HAR Dataset.zip") Note: downloaded file HAS to be in working directory
3. Make sure the "dplyr" and "reshape2" packages are already installed. If not, use install.packages() to do so. 

##After completing pre-script steps 
You can download the run_analysis.R script from here(https://github.com/fmaskari/Getting-Cleaning-Data/blob/master/run_analysis.R)

The script will:
1. Automatically reset the working directory to the downloaded folder "UCI HAR Dataset" for you (for this to work, must make sure that the working directory has the folder directly within it, as stated above)
2. Loads the "dplyr" and "reshape2" packages for use later in the script
3. Merges all subdata sets to create a large, comprehenive dataframe object named "full" that includes subject ids, activity labels, and datasets for both training and test data. 
4. Extract out the columns "subject", "activity", and all other variables that find the mean or standard deviation of each measurement using the grepl() function (now inherent in R). Mentioned variables are extracted out of dataframe object "full" and placed in dataframe object "extractData".
5. Changes the variable column "activity" so that it's values are no longer intergers 1,2,3,4,5, and 6, but now their corresponding activity name "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING" respectively (read in directly from activity_labels.txt). Uses the mutate() from the "dplyr" package to mutate the "activity" column and names the new dataframe object "Final". 
6. Change the names of the variables in the "Final" dataset for more descriptive variable names by removing the "f" or "t" that were infront of the variable names previously. 
7. Creates a 2nd, independently tidy dataframe called "tidy" with the avg of each variable for each subject and activity with the melt() and dcast() functions from the "reshape2" package.
8. Writes the dataframe "tidy" into a txt file "tidy.txt" using write.table() and argument "row.names = FALSE". When reading the text file, use read.table() and "header =TRUE" 
