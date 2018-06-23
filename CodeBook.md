## This code book describes the variables, the data, and transformations or work performed to clean up the data and produces tidydata.txt.

# Raw Data 

The raw data for this project came from the UCI Machine Learning Repository. It was collected from the accelerometers from the Samsung Galaxy S smartphone which can be downloaded here. The full description of the experiments can be read here.

# tidydata.txt

The tidydata.txt data file is a text file, containing space-separated values. The first row contains the names of the variables which are listed and described below while the succeeding rows contain the values of these variables.
Variables
Each row contains 79 averaged signal measurements for a given subject and activity.

# Identifiers
•	subject - The identification of the test subject participating in the experiment (ranges from 1 to 30). 

•	activity - The type of activity performed by the test subject when the corresponding measurements were taken (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

# Activity labels
•	WALKING (value 1): subject was walking
•	WALKING_UPSTAIRS (value 2): subject was walking up a staircase
•	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase
•	SITTING (value 4): subject was sitting 
•	STANDING (value 5): subject was standing up
•	LAYING (value 6): subject was laying down

# Measurements for each subject and activity taken by the smartphone

Time-domain signals

•	Average time-domain body acceleration in the X, Y and Z directions:
o	timeDomainBodyAccelerometerMeanX
o	timeDomainBodyAccelerometerMeanY
o	timeDomainBodyAccelerometerMeanZ

•	Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
o	timeDomainBodyAccelerometerStandardDeviationX
o	timeDomainBodyAccelerometerStandardDeviationY
o	timeDomainBodyAccelerometerStandardDeviationZ

•	Average time-domain gravity acceleration in the X, Y and Z directions:
o	timeDomainGravityAccelerometerMeanX
o	timeDomainGravityAccelerometerMeanY
o	timeDomainGravityAccelerometerMeanZ

•	Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
o	timeDomainGravityAccelerometerStandardDeviationX
o	timeDomainGravityAccelerometerStandardDeviationY
o	timeDomainGravityAccelerometerStandardDeviationZ

•	Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
o	timeDomainBodyAccelerometerJerkMeanX
o	timeDomainBodyAccelerometerJerkMeanY
o	timeDomainBodyAccelerometerJerkMeanZ

•	Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
o	timeDomainBodyAccelerometerJerkStandardDeviationX
o	timeDomainBodyAccelerometerJerkStandardDeviationY
o	timeDomainBodyAccelerometerJerkStandardDeviationZ

•	Average time-domain body angular velocity in the X, Y and Z directions:
o	timeDomainBodyGyroscopeMeanX
o	timeDomainBodyGyroscopeMeanY
o	timeDomainBodyGyroscopeMeanZ

•	Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
o	timeDomainBodyGyroscopeStandardDeviationX
o	timeDomainBodyGyroscopeStandardDeviationY
o	timeDomainBodyGyroscopeStandardDeviationZ

•	Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
o	timeDomainBodyGyroscopeJerkMeanX
o	timeDomainBodyGyroscopeJerkMeanY
o	timeDomainBodyGyroscopeJerkMeanZ

•	Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
o	timeDomainBodyGyroscopeJerkStandardDeviationX
o	timeDomainBodyGyroscopeJerkStandardDeviationY
o	timeDomainBodyGyroscopeJerkStandardDeviationZ

•	Average and standard deviation of the time-domain magnitude of body acceleration:
o	timeDomainBodyAccelerometerMagnitudeMean
o	timeDomainBodyAccelerometerMagnitudeStandardDeviation

•	Average and standard deviation of the time-domain magnitude of gravity acceleration:
o	timeDomainGravityAccelerometerMagnitudeMean
o	timeDomainGravityAccelerometerMagnitudeStandardDeviation

•	Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
o	timeDomainBodyAccelerometerJerkMagnitudeMean
o	timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

•	Average and standard deviation of the time-domain magnitude of body angular velocity:
o	timeDomainBodyGyroscopeMagnitudeMean
o	timeDomainBodyGyroscopeMagnitudeStandardDeviation

•	Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
o	timeDomainBodyGyroscopeJerkMagnitudeMean
o	timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

Frequency-domain signals

•	Average frequency-domain body acceleration in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerMeanX
o	frequencyDomainBodyAccelerometerMeanY
o	frequencyDomainBodyAccelerometerMeanZ

•	Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerStandardDeviationX
o	frequencyDomainBodyAccelerometerStandardDeviationY
o	frequencyDomainBodyAccelerometerStandardDeviationZ

•	Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerMeanFrequencyX
o	frequencyDomainBodyAccelerometerMeanFrequencyY
o	frequencyDomainBodyAccelerometerMeanFrequencyZ

•	Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerJerkMeanX
o	frequencyDomainBodyAccelerometerJerkMeanY
o	frequencyDomainBodyAccelerometerJerkMeanZ

•	Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerJerkStandardDeviationX
o	frequencyDomainBodyAccelerometerJerkStandardDeviationY
o	frequencyDomainBodyAccelerometerJerkStandardDeviationZ

•	Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
o	frequencyDomainBodyAccelerometerJerkMeanFrequencyX
o	frequencyDomainBodyAccelerometerJerkMeanFrequencyY
o	frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

•	Average frequency-domain body angular velocity in the X, Y and Z directions:
o	frequencyDomainBodyGyroscopeMeanX
o	frequencyDomainBodyGyroscopeMeanY
o	frequencyDomainBodyGyroscopeMeanZ

•	Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
o	frequencyDomainBodyGyroscopeStandardDeviationX
o	frequencyDomainBodyGyroscopeStandardDeviationY
o	frequencyDomainBodyGyroscopeStandardDeviationZ

•	Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
o	frequencyDomainBodyGyroscopeMeanFrequencyX
o	frequencyDomainBodyGyroscopeMeanFrequencyY
o	frequencyDomainBodyGyroscopeMeanFrequencyZ

•	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
o	frequencyDomainBodyAccelerometerMagnitudeMean
o	frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
o	frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

•	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
o	frequencyDomainBodyAccelerometerJerkMagnitudeMean
o	frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
o	frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

•	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
o	frequencyDomainBodyGyroscopeMagnitudeMean
o	frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
o	frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

•	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
o	frequencyDomainBodyGyroscopeJerkMagnitudeMean
o	frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
o	frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

# Transformations

To produce the tidydata.txt rom the Raw Data, the following transformations were made by executing the script ‘run_analysis.R’.
1.	Merged the training and test sets to create one data set.
2.	Extracted only the measurements on the mean and standard deviation for each measurement.
3.	Used descriptive activity names to name the activities in the data set.
4.	Appropriately labeled the data set with descriptive variable names.
5.	From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.
