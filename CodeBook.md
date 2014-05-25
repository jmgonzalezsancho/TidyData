# CODE BOOK #
========================================================

## Activity Variables ##

To be descriptive the names of the variables are too long so to ease reading I will be using "CamelCase"

subject: integer 1:30 (30 subjects)

activity: 6 activities: LAYING, SITTING, STANDING, WALKING, WALKING_DOWN, WALKING_UP

### Time Domain Signals ###

timeBodyAccelerometerMeanX: mean body acceleration signal along X-axis

timeBodyAccelerometerMeanY: mean body acceleration signal along Y-axis

timeBodyAccelerometerMeanZ: mean body acceleration signal along Z-axis

timeBodyAccelerometerStandardDeviationX: standard deviation of body acceleration signal along X-axis

timeBodyAccelerometerStandardDeviationY: standard deviation of body acceleration signal along Y-axis

timeBodyAccelerometerStandardDeviationZ: standard deviation of body acceleration signal along Z-axis

timeGravityAccelerometerMeanX: mean gravity acceleration signal along X-axis

timeGravityAccelerometerMeanY: mean gravity acceleration signal along Y-axis

timeGravityAccelerometerMeanZ: mean gravity acceleration signal along Z-axis

timeGravityAccelerometerStandardDeviationX: standard deviation of gravity acceleration signal along X-axis

timeGravityAccelerometerStandardDeviationY: standard deviation of gravity acceleration signal along Y-axis

timeGravityAccelerometerStandardDeviationZ: standard deviation of gravity acceleration signal along Z-axis

timeBodyAccelerometerJerkMeanX: mean acceleration Jerk signal along X-axis

timeBodyAccelerometerJerkMeanY: mean acceleration Jerk signal along Y-axis

timeBodyAccelerometerJerkMeanZ: mean acceleration Jerk signal along Z-axis

timeBodyAccelerometerJerkStandardDeviationX: standard deviation of acceleration Jerk signal along X-axis

timeBodyAccelerometerJerkStandardDeviationY: standard deviation of acceleration Jerk signal along Y-axis

timeBodyAccelerometerJerkStandardDeviationZ: standard deviation of acceleration Jerk signal along Z-axis

timeBodyGyroscopeMeanX: mean angular velocity signal along X-axis

timeBodyGyroscopeMeanY: mean angular velocity signal along Y-axis

timeBodyGyroscopeMeanZ: mean angular velocity signal along Z-axis

timeBodyGyroscopeStandardDeviationX: standard deviation of angular velocity signal along X-axis

timeBodyGyroscopeStandardDeviationY: standard deviation of angular velocity signal along Y-axis

timeBodyGyroscopeStandardDeviationZ: standard deviation of angular velocity signal along Z-axis

timeBodyGyroscopeJerkMeanX: mean angular velocity Jerk signal along X-axis

timeBodyGyroscopeJerkMeanY: mean angular velocity Jerk signal along Y-axis

timeBodyGyroscopeJerkMeanZ: mean angular velocity Jerk signal along Z-axis

timeBodyGyroscopeJerkStandardDeviationX: standard deviation of angular velocity Jerk signal along X-axis

timeBodyGyroscopeJerkStandardDeviationY: standard deviation of angular velocity Jerk signal along Y-axis

timeBodyGyroscopeJerkStandardDeviationZ: standard deviation of angular velocity Jerk signal along Z-axis

timeBodyAccelerometerMagnitudeMean: mean magnitude of body acceleration signals (Euclidean norm)

timeBodyAccelerometerMagnitudeStandardDeviation: standard deviation of magnitude of body acceleration signals

timeGravityAccelerometerMagnitudeMean: mean magnitude of gravity acceleration signals (Euclidean norm)

timeGravityAccelerometerMagnitudeStandardDeviation: standard deviation of magnitude of gravity acceleration signals

timeBodyAccelerometerJerkMagnitudeMean: mean magnitude of body acceleration Jerk signals (Euclidean norm)

timeBodyAccelerometerJerkMagnitudeStandardDeviation: standard deviation of magnitude of body acceleration Jerk signals

timeBodyGyroscopeMagnitudeMean: mean magnitude of body angular velocity signals (Euclidean norm)

timeBodyGyroscopeMagnitudeStandardDeviation: standard deviation of magnitude of body angular velocity signals

timeBodyGyroscopeJerkMagnitudeMean: mean magnitude of body angular velocity Jerk signals (Euclidean norm)

timeBodyGyroscopeJerkMagnitudeStandardDeviation: standard deviation of magnitude of body angular velocity Jerk signals

### Fast Fourier Transform ###

Same as above but after applying Fast Fourier transformations.

fourierBodyAccelerometerMeanX

fourierBodyAccelerometerMeanY

fourierBodyAccelerometerMeanZ

fourierBodyAccelerometerStandardDeviationX

fourierBodyAccelerometerStandardDeviationY

fourierBodyAccelerometerStandardDeviationZ

fourierBodyAccelerometerJerkMeanX

fourierBodyAccelerometerJerkMeanY

fourierBodyAccelerometerJerkMeanZ

fourierBodyAccelerometerJerkStandardDeviationX

fourierBodyAccelerometerJerkStandardDeviationY

fourierBodyAccelerometerJerkStandardDeviationZ

fourierBodyGyroscopeMeanX

fourierBodyGyroscopeMeanY

fourierBodyGyroscopeMeanZ

fourierBodyGyroscopeStandardDeviationX

fourierBodyGyroscopeStandardDeviationY

fourierBodyGyroscopeStandardDeviationZ

fourierBodyAccelerometerMagnitudeMean

fourierBodyAccelerometerMagnitudeStandardDeviation

fourierBodyAccelerometerJerkMagnitudeMean

fourierBodyAccelerometerJerkMagnitudeStandardDeviation

fourierBodyGyroscopeMagnitudeMean

fourierBodyGyroscopeMagnitudeStandardDeviation

fourierBodyGyroscopeJerkMagnitudeMean

fourierBodyGyroscopeMagnitudeStandardDeviation

## Script Variables ##

features: data frame with the names of the measured variables as provided originally.

featuresNames: Vector. Column 2 of the features data frame with the names of the variables

dataTrain: data frame with data in the train set

subjectTrain: data frame with subjects in the train set

activityTrain: data frame with activities in the train set

train: data set merging dataTrain + subjectTrain + activityTrain

dataTest: data frame with data in the test set

subjectTest: data frame with subjects in the test set

activityTest: data frame with activities in the test set

test: data set merging dataTest + subjectTest + activityTest

allData: variable containing the merging of the train and test data frames. Contains all data.

allDataInOrder: same as allData but data are ordered firstly by subject (first 1, then 2, and so on) and secondly by activity.

meanOrStd: variable that contains labels in featuresNames that contain "mean" or "std"

noFreq: variable that contains labels in featuresNames that contain "Freq"

meanOrStdNoFreq: variable that contains labels in featuresNames that contain "mean" or "std" but no "Freq"

columns: vector that contains meanOrStdNoFreq plus "Subject" and "Activity"

cleanData: data frame that contains only the selected columns (mean, std, sebject and activity)

cleanDataLong: cleanData in long form sorted by subject and activity

cleanDataWideMean: cleanData back to the wide form but extracting the mean of all measurements for each patient and each activity.

variables <- data frame with new names for the selected variables (the ones in the list above)

