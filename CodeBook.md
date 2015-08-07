This project uses data from the Center for Machine Learning and Intelligent Systems at the University of California, Irvine.

Human Activity Recognition Using Smartphones Dataset (Version 1.0)
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

==================================================================

The tidy data consists of 180 observations and 68 variables.
Each row represents a unique combination of activity and subject (6 x 30).

The variables
-------------
1		-	"Activity":		The name of the activity performed. Can have one of the six values: 
							WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
							The original data contained numbers from 1 to 6 for this information.
	
2		-	"Subject":		A number from 1 to 30, represents the subject performing the activity

3-68	-	"Average_...":	This group of variables contains information from the sensor signals.
				Each contains the average of all the values for a specific feature for one subject and one activity.
				66 specific features were chosen from 561 features in the original data.
				They represent the mean and standard deviation of 33 sensor signals
				(they contain the strings 'mean()' and 'std()' accordingly):
	
										
				tBodyAcc-XYZ (3 variables)
				tGravityAcc-XYZ (3 variables)
				tBodyAccJerk-XYZ (3 variables)
				tBodyGyro-XYZ (3 variables)
				tBodyGyroJerk-XYZ (3 variables)
				tBodyAccMag
				tGravityAccMag
				tBodyAccJerkMag
				tBodyGyroMag
				tBodyGyroJerkMag
				fBodyAcc-XYZ (3 variables)
				fBodyAccJerk-XYZ (3 variables)
				fBodyGyro-XYZ (3 variables)
				fBodyAccMag
				fBodyAccJerkMag
				fBodyGyroMag
				fBodyGyroJerkMag


The following section explains what the variable names mean.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features values were normalized and bounded within [-1,1].

				
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
							
							
