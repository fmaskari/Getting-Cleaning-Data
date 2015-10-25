##Project Description

Human Activity Recognition dataframes built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


##Study design and data processing

###Collection of the raw data

Experiment involved a group of 30 volunteers within age of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. 

##Creating the tidy datafile

###Guide to create the tidy data file

*Download the data files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
*Unzip the file using the code: unzip("getdata-projectfiles-UCI HAR Dataset.zip") Note: downloaded file HAS to be in working directory
*Data files in the "Inertial Signals" folders are ignored.
*Make sure the "dplyr" and "reshape2" packages are already installed
*Run the run_analysis.R script (link in next section)

###Cleaning of the data

Script created merges all the data files into one large, comprehensive, dataframe and then extracts all the variables that describe the mean and std of each measurement as well as the subject and activity of each observation. Changes the activity variable so it names the activity instead of the corresponding number and then changes the names of certain variables. Outputs a "tidy" dataframe that has the average of each variable for each subject and activity in each row. Link to run_analysis.R script is: "https://github.com/fmaskari/Getting-Cleaning-Data/blob/master/run_analysis.R"


##Description of the variables in the tidy.txt file

General description of the file:
*Dimensions is 180x48
*Each observation is composed of the average of the means and standard deviations of each measurement for each subject and activity
*Variables are listed below

###subjects
ID number of each subject performing the various activities. Ranges from 1-30, each number representing one of the 30 volunteers who did the study. Class: integer

###activity
One of 6 activities ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING") the subject did during the exercise. Each subject did each activity, so there will be a total of 6 activities(each of the listed) per subject in the "tidy" dataframe. Class: Factor

###BodyAcc-mean()-X
The mean of body acceleration in the X direction. Class: numeric.

###BodyAcc-mean()-Y
The mean of body acceleration in the Y direction. Class: numeric.

###BodyAcc-mean()-Z
The mean of body acceleration in the Z direction. Class: numeric. 

###BodyAcc-std()-X
The standard deviation of body acceleration in the X direction. Class: numeric.

###BodyAcc-std()-Y
The standard deviation of body accelaration in the Y direction. Class: numeric.

###BodyAcc-std()-Z
The standard deviation of body acceleartion in the Z direction. Class: numeric.

###GravityAcc-mean()-X
The mean of gravity acceleration in the X direction. Class: numeric.

###GravityAcc-mean()-Y
The mean of gravity acceleration in the Y direction. Class: numeric.

###GravityAcc-mean()-Z
The mean of gravity acceleration in the Z direction. Class: numeric.

###GravityAcc-std()-X
The standard deviation of gravity acceleration in the X direction. Class: numeric.

###GravityAcc-std()-Y
The standard deviation of gravity acceleration in the Y direction. Class: numeric.

###GravityAcc-std()-Z
The standard deviation of gravity acceleration in the Z direction. Class: numeric.

###BodyAccJerk-mean()-X
The mean of the jerk of body acceleration in the X direction. Class: numeric.

###BodyAccJerk-mean()-Y
The mean of the jerk of body acceleration in the Y direction. Class: numeric.

###BodyAccJerk-mean()-Z
The mean of the jerk of body acceleration in the Z direction. Class: numeric.

###BodyAccJerk-std()-X
The standard deviation of the jerk of body acceleration in the X direction. Class: numeric.

###BodyAccJerk-std()-Y
The standard deviation of the jerk of body acceleration in the Y direction. Class: numeric.

###BodyAccJerk-std()-Z
The standard deviation of the jerk of body acceleration in the Z direction. Class: numeric.

###BodyGyro-mean()-X
The mean of the body's gryscopic acceleration in the X direction. Class: numeric.

###BodyGyro-mean()-Y
The mean of the body's gryscopic acceleration in the Y direction. Class: numeric.

###BodyGyro-mean()-Z
The mean of the body's gryscopic acceleration in the Z direction. Class: numeric.

###BodyGyro-std()-X
The standard deviation of the body's gryscopic acceleration in the X direction. Class: numeric.

###BodyGyro-std()-Y
The standard deviation of the body's gryscopic acceleration in the Y direction. Class: numeric.

###BodyGyro-std()-Z
The standard deviation of the body's gryscopic acceleration in the Y direction. Class: numeric.

###BodyGyroJerk-mean()-X
The mean of the jerk of the body's gryscopic acceleration in the X direction. Class: numeric.

###BodyGyroJerk-mean()-Y
The mean of the jerk of the body's gryscopic acceleration in the Y direction. Class: numeric.

###BodyGyroJerk-mean()-Z      
The mean of the jerk of the body's gryscopic acceleration in the Z direction. Class: numeric.

###BodyGyroJerk-std()-X
The standard deviation of the jerk of the body's gryscopic acceleration in the X direction. Class: numeric.

###BodyGyroJerk-std()-Y
The standard deviation of the jerk of the body's gryscopic acceleration in the Y direction. Class: numeric.

###BodyGyroJerk-std()-Z
The standard deviation of the jerk of the body's gryscopic acceleration in the Z direction. Class: numeric.

###BodyAccMag-mean()   
The mean of the magnitude of body acceleration. Class: numeric.

###BodyAccMag-std()
The standard deviation of the magnitude of body acceleration. Class: numeric.

###GravityAccMag-mean()
The mean of the magnitude of gravity acceleration of body. Class: numeric.

###GravityAccMag-std()       
The standard deviation of the magnitude of gravity acceleration of body. Class: numeric.

###BodyAccJerkMag-mean()
The mean of the magnitude of the jerk of body acceleration Class: numeric.

###BodyAccJerkMag-std()
The standard deviation of the magnitude of the jerk of body acceleration. Class: numeric.

###BodyGyroMag-mean()
The mean of the magnitude of body gyroscopic acceleration. Class: numeric.

###BodyGyroMag-std()
The standard deviation of the magnitude of body gyroscopic acceleration. Class: numeric.

###BodyGyroJerkMag-mean()
The mean of the magnitude of the jerk of body gyroscopic acceleration. Class: numeric.

###BodyGyroJerkMag-std()
The standard deviation of the magnitude of the jerk of body gyroscopic acceleration. Class: numeric.

