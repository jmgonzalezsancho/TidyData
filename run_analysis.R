#run_analysis.R by Jose Gonzalez
#May 2014

#Reading the data frame with feature labels

features <-read.table("features.txt")

#Generate a vector with feature labels

featuresNames <- features[ ,"V2"]

#Read train data frame and name the columns

dataTrain <- read.table("X_train.txt", col.names = featuresNames)

#Read Subject's labels for train data and name the column

subjectTrain <- read.table("subject_train.txt", col.names = "Subject")

#Read Activity labels for train data an name the column

activityTrain <- read.table("y_train.txt", col.names = "Activity")

#Merge the 3 data frames related to train data

train <- cbind(dataTrain, subjectTrain, activityTrain)

#Read test data frame and name the columns

dataTest <- read.table("X_test.txt", col.names = featuresNames)

#Read Subject's labels for test data and name the column

subjectTest <- read.table("subject_test.txt", col.names = "Subject")

#Read Activity labels for test data an name the column

activityTest <- read.table("y_test.txt", col.names = "Activity")

#Merge the 3 data frames related to test data

test <- cbind(dataTest, subjectTest, activityTest)

#MERGE both data frames: train(on top) and test(bottom)

allData <- rbind(train, test)

#ORDER data frame by subject (firstly) and then by activity (secondly)

allDataInOrder <- allData[ order(allData[ ,562], allData[ ,563]), ]

#Replace activity codes in numbers (1-6) for activity names

allDataInOrder$Activity[allDataInOrder$Activity == 1] <- "WALKING"
allDataInOrder$Activity[allDataInOrder$Activity == 2] <- "WALKING_UP"
allDataInOrder$Activity[allDataInOrder$Activity == 3] <- "WALKING_DOWN"
allDataInOrder$Activity[allDataInOrder$Activity == 4] <- "SITTING"
allDataInOrder$Activity[allDataInOrder$Activity == 5] <- "STANDING"
allDataInOrder$Activity[allDataInOrder$Activity == 6] <- "LAYING"

#Extract columns that are means or standard deviations but avoid Freq.means

meanOrStd <- grep("std|mean", featuresNames)
noFreq <- grep("Freq", featuresNames)
meanOrStdNoFreq <- setdiff(meanOrStd, noFreq)
columns <- c(meanOrStdNoFreq, 562:563)
cleanData <- allDataInOrder[columns]

#Means by subject and activity
cleanDataLong <- melt(cleanData, id.vars = c("Subject", "Activity"))
cleanDataWideMean <- dcast(cleanDataLong, Subject + Activity ~ variable, fun.aggregate = mean)

#Rename variables. New names are in a data frame called variables
variables <- read.table("variables.csv", sep = "\t", col.names = "variables")
names(cleanDataWideMean) <- variables$variables

#Save tidy data in working directory
write.table(cleanDataWideMean, file = "TidyData.txt", row.names = FALSE)