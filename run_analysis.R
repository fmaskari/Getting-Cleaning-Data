#Step 0: Prep

#after downloading and unzipping the files from the URL provided in the ReadMe, 
#set working directory to folder "UCI HAR Dataset
setwd("./UCI HAR Dataset")

#download all necessary files via "read.table"
trainset <- read.table("./train/X_train.txt")
trainlabels <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
testset <- read.table("./test/x_test.txt")
testlabels <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

#load necessary packages from library
library(dplyr)
library(reshape2)

##Step 1: Merges the test and training datasets to create one dataset

#combine the rows of corresponding data files
subjects <- rbind(subject_test, subject_train)
activity <- rbind(testlabels, trainlabels)
sets <- rbind(testset, trainset)

#subset name of all testset/trainset variables from features dataframe 
variablenames <- features[,2]

#assign variable names to variables in all 3 datasets
colnames(subjects) <- "subjects"
colnames(activity) <- "activity"
colnames(sets) <- variablenames

#merge all columns into one very large, comprehensive dataset
full <- cbind(subjects, activity, sets)

##Step 2: Extract only the measurement on the mean & std for each measurement

#extract subject, activity, mean(), and std() variables
extractData <- full[,grepl("subjects|activity|\\bmean()\\b|\\bstd()\\b",colnames(full))]

##Step 3: Uses descriptive activity names to name the activities in the dataset

#add a column describing activity levels
Final<- mutate(extractData, activity = factor(activity, labels = activity_labels[,2]))

##Step 4: Appropriately labels the dataset with descriptive variable names
#remove "t" from beginning of variable names
colnames(Final) <- gsub("^t", "", colnames(Final))
colnames(Final) <- gsub("^f", "", colnames(Final))

##Step 5: Create a 2nd, independently tidy dataset with the avg of each variable
## for each activity and each subject

#reshapes dataset from step 4 to tidy data set
melted <- melt(Final, id=c("subjects","activity"))
tidy <- dcast(melted, subjects+activity ~ variable, mean)

#returning the tidy table as a "txt" file
write.table(tidy, "tidy.txt", row.names = FALSE)
                