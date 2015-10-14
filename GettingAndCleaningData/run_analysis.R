##########################################################################
# Script:       run_analysis.R
# Author:       tuairisg
# Description:  This script uses a reads a raw dataset from entitled
#               'Human Activity Recognition Using Smartphones Dataset' 
#               (Anguita et. al, 2012), see README.md for reference,
#               and produces a tidy dataset containing the averaged mean
#               and standard deviations of various measurments.
#               The script requires that the raw data is available in 
#               the working directory in the folder 'UCI HAR Dataset'.
#               For more information see README.md and CodeBook.md.
##########################################################################

library(dplyr)

##########################################################################
# Step 1: 	Merges the training and the test sets to create one data set.
##########################################################################

# Read the training and test data sets (labels not read yet) 
trainingSet <- read.table("./UCI HAR Dataset/train/X_train.txt",
                          colClasses="numeric")
            

testSet <- read.table("./UCI HAR Dataset/test/X_test.txt",
                      colClasses="numeric")

# Read the training and test labels, which correspond to activity names
trainingLabels <- read.table("./UCI HAR Dataset/train/y_train.txt",
                             col.names=c("activity"),
                             colClasses="character")

testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt",
                         col.names=c("activity"),
                         colClasses="character")

# Read the training and test subject ids
trainingSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                              col.names=c("subject"),
                              colClasses="numeric"
                              )

testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                          col.names=c("subject"),
                          colClasses="numeric"
                          )

# Convert to tbl to use dplyr
trainingSet <- tbl_df(trainingSet)
testSet <- tbl_df(testSet)
trainingLabels <- tbl_df(trainingLabels)
testLabels <- tbl_df(testLabels)
trainingSubject <- tbl_df(trainingSubject)
testSubject <- tbl_df(testSubject)

# Merge to form a single data set, row order (training, test)
trainingSet <- trainingLabels %>% 
  bind_cols(trainingSubject) %>% 
  bind_cols(trainingSet)
testSet <- testLabels %>% 
  bind_cols(testSubject) %>% 
  bind_cols(testSet)
dataSet <- bind_rows(trainingSet,testSet)

# Cleanup
rm(trainingSet)
rm(testSet)
rm(trainingLabels)
rm(testLabels)
rm(trainingSubject)
rm(testSubject)

##########################################################################
# Step 2: 	Extracts only the measurements on the mean and 
#           standard deviation for each measurement. 
##########################################################################

# Read the list of features, of format id, feature.name
features <- read.table("./UCI HAR Dataset/features.txt",
                       col.names=c("id","feature.name"), 
                       colClasses=c("numeric","character"))

# Filter the features labelled mean() and std()
features <- tbl_df(features) 
features <- filter(features, grepl("mean\\()",feature.name)
                    |grepl("std\\()",feature.name))

colNames <- paste("V",sep="",features$id)
dataSet <- select(dataSet,one_of("activity","subject",colNames))

# Cleanup
rm(colNames)

##########################################################################
# Step 3:  Uses descriptive activity names to name the activities in 
#          the data set
##########################################################################

names <- read.table("./UCI HAR Dataset/activity_labels.txt",
                                col.names=c("id","activity.name"), 
                                colClasses=c("numeric","character"))

dataSet <- dataSet %>% 
  mutate(activity=ifelse(activity==1,names[1,"activity.name"],activity)) %>% 
  mutate(activity=ifelse(activity==2,names[2,"activity.name"],activity)) %>% 
  mutate(activity=ifelse(activity==3,names[3,"activity.name"],activity)) %>% 
  mutate(activity=ifelse(activity==4,names[4,"activity.name"],activity)) %>% 
  mutate(activity=ifelse(activity==5,names[5,"activity.name"],activity)) %>% 
  mutate(activity=ifelse(activity==6,names[6,"activity.name"],activity))

# Cleanup
rm(names)

##########################################################################
# Step 4:  Appropriately labels the data set with descriptive 
#          variable names
##########################################################################

# Process the feature names using regular expressions, convert to lowercase
features$feature.name <- gsub("\\-mean\\()-",".mean.",features$feature.name)
features$feature.name <- gsub("\\-mean\\()",".mean",features$feature.name)
features$feature.name <- gsub("\\-std\\()-",".std.",features$feature.name)
features$feature.name <- gsub("\\-std\\()",".std",features$feature.name)

# Use the processed feature names to label the variables
cols <- c("activity","subject",features$feature.name)
names(dataSet) <- cols

# Cleanup
rm(features)

##########################################################################
# Step 5: 	From the data set in step 4, creates a second, independent
# 			    tidy data set with the average of each variable for each 
#           activity and each subject.
##########################################################################

dataSet <- group_by(dataSet,activity,subject)
cleanSet <- summarise_each(dataSet,funs(mean)) # average taken to be mean 
cleanSet <- cleanSet[order(cleanSet$activity, cleanSet$subject),]

##########################################################################
# Outputs: Create a data set for upload as a txt file created 
#          with write.table() using row.name=FALSE (clean.txt).
#          Option to automatically create the basis of the codebook by 
#          printing column names of the dataset (codebook.txt).
##########################################################################

write.table(cleanSet,file="clean.txt",row.name=FALSE)

# Uncomment to print colunm names to create a codebook
#write(colnames(cleanSet), "codebook.txt")

# Cleanup
(dataSet)
(cleanSet)