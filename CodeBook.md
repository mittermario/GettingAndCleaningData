### Code book

The tidy dataset UCI_HAR_Dataset_tidy/average_by_subjectnumber_and_activity.csv contains, grouped by the values of

* subjectnumber: indicates one of the 30 volunteers (see Study Design)
* activity: name of the activity (see Study Design)

180 observations of the according average values of the following selfdescribing variables measurements (XYZ is used to denote 3-axial signals in the X, Y and Z directions)

* TimeDomainSignalBodyLinearAccelerationMeanX
* TimeDomainSignalBodyLinearAccelerationMeanY
* TimeDomainSignalBodyLinearAccelerationMeanZ
* TimeDomainSignalBodyLinearAccelerationStandardDeviationX
* TimeDomainSignalBodyLinearAccelerationStandardDeviationY
* TimeDomainSignalBodyLinearAccelerationStandardDeviationZ
* TimeDomainSignalGravityLinearAccelerationMeanX
* TimeDomainSignalGravityLinearAccelerationMeanY
* TimeDomainSignalGravityLinearAccelerationMeanZ
* TimeDomainSignalGravityLinearAccelerationStandardDeviationX
* TimeDomainSignalGravityLinearAccelerationStandardDeviationY
* TimeDomainSignalGravityLinearAccelerationStandardDeviationZ
* TimeDomainSignalBodyLinearAccelerationDerivativeMeanX
* TimeDomainSignalBodyLinearAccelerationDerivativeMeanY
* TimeDomainSignalBodyLinearAccelerationDerivativeMeanZ
* TimeDomainSignalBodyLinearAccelerationDerivativeStandardDeviationX
* TimeDomainSignalBodyLinearAccelerationDerivativeStandardDeviationY
* TimeDomainSignalBodyLinearAccelerationDerivativeStandardDeviationZ
* TimeDomainSignalBodyAngularVelocityMeanX
* TimeDomainSignalBodyAngularVelocityMeanY
* TimeDomainSignalBodyAngularVelocityMeanZ
* TimeDomainSignalBodyAngularVelocityStandardDeviationX
* TimeDomainSignalBodyAngularVelocityStandardDeviationY
* TimeDomainSignalBodyAngularVelocityStandardDeviationZ
* TimeDomainSignalBodyAngularVelocityDerivativeMeanX
* TimeDomainSignalBodyAngularVelocityDerivativeMeanY
* TimeDomainSignalBodyAngularVelocityDerivativeMeanZ
* TimeDomainSignalBodyAngularVelocityDerivativeStandardDeviationX
* TimeDomainSignalBodyAngularVelocityDerivativeStandardDeviationY
* TimeDomainSignalBodyAngularVelocityDerivativeStandardDeviationZ
* TimeDomainSignalBodyLinearAccelerationEuclideanNormMean
* TimeDomainSignalBodyLinearAccelerationEuclideanNormStandardDeviation
* TimeDomainSignalGravityLinearAccelerationEuclideanNormMean
* TimeDomainSignalGravityLinearAccelerationEuclideanNormStandardDeviation
* TimeDomainSignalBodyLinearAccelerationDerivativeEuclideanNormMean
* TimeDomainSignalBodyLinearAccelerationDerivativeEuclideanNormStandardDeviation
* TimeDomainSignalBodyAngularVelocityEuclideanNormMean
* TimeDomainSignalBodyAngularVelocityEuclideanNormStandardDeviation
* TimeDomainSignalBodyAngularVelocityDerivativeEuclideanNormMean
* TimeDomainSignalBodyAngularVelocityDerivativeEuclideanNormStandardDeviation
* FrequencyDomainSignalBodyLinearAccelerationMeanX
* FrequencyDomainSignalBodyLinearAccelerationMeanY
* FrequencyDomainSignalBodyLinearAccelerationMeanZ
* FrequencyDomainSignalBodyLinearAccelerationStandardDeviationX
* FrequencyDomainSignalBodyLinearAccelerationStandardDeviationY
* FrequencyDomainSignalBodyLinearAccelerationStandardDeviationZ
* FrequencyDomainSignalBodyLinearAccelerationDerivativeMeanX
* FrequencyDomainSignalBodyLinearAccelerationDerivativeMeanY
* FrequencyDomainSignalBodyLinearAccelerationDerivativeMeanZ
* FrequencyDomainSignalBodyLinearAccelerationDerivativeStandardDeviationX
* FrequencyDomainSignalBodyLinearAccelerationDerivativeStandardDeviationY
* FrequencyDomainSignalBodyLinearAccelerationDerivativeStandardDeviationZ
* FrequencyDomainSignalBodyAngularVelocityMeanX
* FrequencyDomainSignalBodyAngularVelocityMeanY
* FrequencyDomainSignalBodyAngularVelocityMeanZ
* FrequencyDomainSignalBodyAngularVelocityStandardDeviationX
* FrequencyDomainSignalBodyAngularVelocityStandardDeviationY
* FrequencyDomainSignalBodyAngularVelocityStandardDeviationZ
* FrequencyDomainSignalBodyLinearAccelerationEuclideanNormMean
* FrequencyDomainSignalBodyLinearAccelerationEuclideanNormStandardDeviation
* FrequencyDomainSignalBodyLinearAccelerationDerivativeEuclideanNormMean
* FrequencyDomainSignalBodyLinearAccelerationDerivativeEuclideanNormStandardDeviation
* FrequencyDomainSignalBodyAngularVelocityEuclideanNormMean
* FrequencyDomainSignalBodyAngularVelocityEuclideanNormStandardDeviation
* FrequencyDomainSignalBodyAngularVelocityDerivativeEuclideanNormMean
* FrequencyDomainSignalBodyAngularVelocityDerivativeEuclideanNormStandardDeviation

All time domain signals were captured at 50 Hz and filtered afterwards - see Study Design and documentation of original raw data for more information.
No further information on the units are given with the original data, so SI units have to be assumed for all measured quantities.

### Study Design
* The original raw data is taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* Original Data Set Information (from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

* The purpose of this study is to create a tidy data set containing the means and standard deviations from this data

### Summary choices

As indicated in Code Book only the mean and standard deviations have been taken from the original data and furthermore they have been grouped and averaged accoring to 
subjectnumber and activity.
