# Codebook for class project, Getting and Cleaning Data, Oct 2015

## Study design
The dataset produced using run_analysis.R was processed from raw data
originally published in the study
"Human Activity Recognition Using Smartphones Dataset" [1]. 

In summary, this study involved 30 volunteer subject, who each performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while 
wearing a smartphone. Measurments were taken from the smartphone's accelerometer 
and gyroscope, and these measurements were processed using noise filters. 
Full details of the original study design may be found at [1].

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012

## Raw dataset
The raw data may be found in the folder "UCI HAR Dataset"

## Clean dataset
The cleaned data set may be found in the file clean.txt, as a product of running
the script script run_analysis.R

## Data cleaning
The clean dataset clean.txt was produced using the run_analysis.R,
using the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average 
   of each variable for each activity and each subject.

## Code book
-**activity** (string)      
A description of the activity carried out.  

-**subject** (integer, range 1:30)    
The subject who performed the activity for each window sample.

-**tBodyAcc.mean.X** (numerical, m/s^2)  
(Averaged) Mean of the estimated body acceleration, in X axis

-**tBodyAcc.mean.Y**  (numerical, m/s^2)   
(Averaged) Mean of the estimated body acceleration, in Y axis

-**tBodyAcc.mean.Z** (numerical, m/s^2)  
(Averaged) Mean of the estimated body acceleration, in Z axis

-**tBodyAcc.std.X** (numerical, m/s^2)  
(Averaged) Standard deviation of the estimated body acceleration, in X axis

-**tBodyAcc.std.Y** (numerical, m/s^2)
(Averaged) Standard deviation of the estimated body acceleration, in Y axis

-**tBodyAcc.std.Z** (numerical, m/s^2)
(Averaged) Standard deviation of the estimated body acceleration, in Z axis

-**tGravityAcc.mean.X** (numerical, m/s^2)  
(Averaged) Mean of the estimated gravity acceleration, in X axis

-**tGravityAcc.mean.Y** (numerical, m/s^2)  
(Averaged) Mean of the estimated gravity acceleration, in Y axis

-**tGravityAcc.mean.Z** (numerical, m/s^2)  
(Averaged) Mean of the estimated gravity acceleration, in Z axis

-**tGravityAcc.std.X** (numerical, m/s^2)
(Averaged) Standard deviation of the estimated gravity acceleration, in X axis

-**tGravityAcc.std.Y** (numerical, m/s^2)
(Averaged) Standard deviation of the estimated gravity acceleration, in Y axis

-**tGravityAcc.std.Z** (numerical, m/s^2)
(Averaged) Standard deviation of the estimated gravity acceleration, in Z axis

-**tBodyAccJerk.mean.X** (numerical, m/s^2)  
(Averaged) Mean of the Jerk signal for body acceleration, in X axis

-**tBodyAccJerk.mean.Y** (numerical, m/s^2)  
(Averaged) Mean of the Jerk signal for body acceleration, in Y axis

-**tBodyAccJerk.mean.Z** (numerical, m/s^2)  
(Averaged) Mean of the Jerk signal for body acceleration, in Z axis

-**tBodyAccJerk.std.X** (numerical, m/s^2)  
(Averaged) Standard deviation of the Jerk signal for body acceleration, in X axis

-**tBodyAccJerk.std.Y** (numerical, m/s^2)  
(Averaged) Standard deviation of the Jerk signal for body acceleration, in Y axis

-**tBodyAccJerk.std.Z** (numerical, m/s^2)  
(Averaged) Standard deviation of the Jerk signal for body acceleration, in Z axis

-**tBodyGyro.mean.X** (numerical, radians/s)    
(Averaged) Mean of the estimated body angular velocity, in X axis

-**tBodyGyro.mean.Y** (numerical, radians/s)    
(Averaged) Mean of the estimated body angular velocity, in Y axis

-**tBodyGyro.mean.Z** (numerical, radians/s)  
(Averaged) Mean of the estimated body angular velocity, in Z axis

-**tBodyGyro.std.X** (numerical, radians/s)  
(Averaged) Standard deviation of the estimated angular velocity, in X axis

-**tBodyGyro.std.Y** (numerical, radians/s)  
(Averaged) Standard deviation of the estimated angular velocity, in Y axis

-**tBodyGyro.std.Z** (numerical, radians/s)  
(Averaged) Standard deviation of the estimated angular velocity, in Z axis

-**tBodyGyroJerk.mean.X** (numerical, radians/s)  
(Averaged) Mean of the Jerk signal for the estimated angular velocity, in X axis

-**tBodyGyroJerk.mean.Y** (numerical, radians/s)  
(Averaged) Mean of the Jerk signal for the estimated angular velocity, in Y axis

-**tBodyGyroJerk.mean.Z** (numerical, radians/s)  
(Averaged) Mean of the Jerk signal for the estimated angular velocity, in Z axis

-**tBodyGyroJerk.std.X** (numerical, radians/s)  
(Averaged) Standard deviation of the Jerk signal for the estimated angular velocity, in X axis

-**tBodyGyroJerk.std.Y** (numerical, radians/s)  
(Averaged) Standard deviation of the Jerk signal for the estimated angular velocity, in Y axis

-**tBodyGyroJerk.std.Z** (numerical, radians/s)  
(Averaged) Standard deviation of the Jerk signal for the estimated angular velocity, in Z axis

-**tBodyAccMag.mean** (numerical, m/s^2)    
(Averaged) Mean of the magnitudes of body acceleration (calculated using the Euclidean norm)

-**tBodyAccMag.std** (numerical, m/s^2)   
(Averaged) Standard deviation of the magnitudes of body acceleration (calculated using the Euclidean norm)

-**tGravityAccMag.mean** (numerical, m/s^2)    
(Averaged) Mean of the magnitudes of gravity acceleration (calculated using the Euclidean norm)

-**tGravityAccMag.std** (numerical, m/s^2)  
(Averaged) Standard deviation of the magnitudes of gravity acceleration (calculated using the Euclidean norm)

-**tBodyAccJerkMag.mean** (numerical, m/s^2)  
(Averaged) Mean of the magnitudes of Jerk signal for body acceleration (calculated using the Euclidean norm)

-**tBodyAccJerkMag.std** (numerical, m/s^2)    
(Averaged) Standard deviation of the magnitudes of Jerk signal for body acceleration (calculated using the Euclidean norm)

-**tBodyGyroMag.mean** (numerical, radians/s)  
(Averaged) Standard deviation of the magnitudes of body angular velocity (calculated using the Euclidean norm)

-**tBodyGyroMag.std** (numerical, radians/s)  
(Averaged) Standard deviation of the magnitudes of body angular velocity (calculated using the Euclidean norm)

-**tBodyGyroJerkMag.mean** (numerical, radians/s)  
(Averaged) Standard deviation of the magnitudes of Jerk signal of body angular velocity (calculated using the Euclidean norm)

-**tBodyGyroJerkMag.std** (numerical, radians/s)  
(Averaged) Standard deviation of the magnitudes of Jerk signal of body angular velocity (calculated using the Euclidean norm)

-**fBodyAcc.mean.X** (unitless)  
(Averaged) Fast Fourier Transform of tBodyAcc.mean.X

-**fBodyAcc.mean.Y** (unitless)  
(Averaged) Fast Fourier Transform of tBodyAcc.mean.Y

-**fBodyAcc.mean.Z** (unitless)
(Averaged) Fast Fourier Transform of tBodyAcc.mean.Z

-**fBodyAcc.std.X** (unitless)
(Averaged) Fast Fourier Transform of tBodyAcc.std.X

-**fBodyAcc.std.Y** (unitless)
(Averaged) Fast Fourier Transform of tBodyAcc.std.Y

-**fBodyAcc.std.Z** (unitless)
(Averaged) Fast Fourier Transform of tBodyAcc.std.Z

-**fBodyAccJerk.mean.X** (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyAccJerk.mean.Y**  (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyAccJerk.mean.Z**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyAccJerk.std.X**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyAccJerk.std.Y**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyAccJerk.std.Z**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyGyro.mean.X**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.X

-**fBodyGyro.mean.Y**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.Y

-**fBodyGyro.mean.Z**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccJerk.mean.Z

-**fBodyGyro.std.X**   (unitless)
(Averaged) Fast Fourier Transform of tBodyGyro.std.X

-**fBodyGyro.std.Y**   (unitless)
(Averaged) Fast Fourier Transform of tBodyGyro.std.Y

-**fBodyGyro.std.Z**   (unitless)
(Averaged) Fast Fourier Transform of tBodyGyro.std.Z

-**fBodyAccMag.mean**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccMag.mean

-**fBodyAccMag.std**   (unitless)
(Averaged) Fast Fourier Transform of tBodyAccMag.std

-**fBodyBodyAccJerkMag.mean**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyAccJerkMag.mean

-**fBodyBodyAccJerkMag.std**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyAccJerkMag.std

-**fBodyBodyGyroMag.mean**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyGyroMag.mean

-**fBodyBodyGyroMag.std**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyGyroMag.std

-**fBodyBodyGyroJerkMag.mean**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyGyroJerkMag.mean

-**fBodyBodyGyroJerkMag.std**   (unitless)
(Averaged) Fast Fourier Transform of tBodyBodyGyroJerkMag.std
