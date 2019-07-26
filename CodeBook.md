Following text gives an expository summary of the components used in this experiment.

The dataset below was obtained by grouping the provided dataframe based on the subject and subsequently activity.
Then these groups were aggregated using average for all the individual features and the resulting tidy 
dataset obtained contained the features as listed below. Kindly read the interpretation of the names once before
you look at the variable names.

The prefix TimeDom is indicative of the study being performed in time domain which is most natural.

For computational reasons, these values were transformed into frequency domain using FFT and those 
values are preceded with the phrase FrequencyDom.

The Subject column enumerates a person to a number and chronologically lists down all the tests performed
on that one subject in the column below.

The suffix mean indicates that the value is obtained by aggregating several groups and finding out their
respective means. Similarly the suffix std is indicative of standard deviation calculated similarly.

The X,Y,Z at end of some features describe the value of that feature in that respective cartesian direction.

The Activity column defines the activity for which the values were recorded & ActivityName column 
lists down the literal meaning of that activity which is enumerated for computer's sake. 

* "Subject"
* "Activity"
* "ActivityName"
* "TimeDom_BodyAcceleration.mean_X"
* "TimeDom_BodyAcceleration.mean_Y"
* "TimeDom_BodyAcceleration.mean_Z"
* "TimeDom_GravityAcceleration.mean_X"
* "TimeDom_GravityAcceleration.mean_Y"
* "TimeDom_GravityAcceleration.mean_Z"
* "TimeDom_BodyAccelerationJerk.mean_X"
* "TimeDom_BodyAccelerationJerk.mean_Y"
* "TimeDom_BodyAccelerationJerk.mean_Z"
* "TimeDom_BodyGyro.mean_X"
* "TimeDom_BodyGyro.mean_Y"
* "TimeDom_BodyGyro.mean_Z"
* "TimeDom_BodyGyroJerk.mean_X"
* "TimeDom_BodyGyroJerk.mean_Y"
* "TimeDom_BodyGyroJerk.mean_Z"
* "TimeDom_BodyAccelerationMagnitude.mean"
* "TimeDom_GravityAccelerationMagnitude.mean"
* "TimeDom_BodyAccelerationJerkMagnitude.mean"
* "TimeDom_BodyGyroMagnitude.mean"
* "TimeDom_BodyGyroJerkMagnitude.mean"
* "FrequencyDom_BodyAcceleration.mean_X"
* "FrequencyDom_BodyAcceleration.mean_Y"
* "FrequencyDom_BodyAcceleration.mean_Z"
* "FrequencyDom_BodyAccelerationJerk.mean_X"
* "FrequencyDom_BodyAccelerationJerk.mean_Y"
* "FrequencyDom_BodyAccelerationJerk.mean_Z"
* "FrequencyDom_BodyGyro.mean_X"
* "FrequencyDom_BodyGyro.mean_Y"
* "FrequencyDom_BodyGyro.mean_Z"
* "FrequencyDom_BodyAccelerationMagnitude.mean"
* "FrequencyDom_BodyBodyAccelerationJerkMagnitude.mean"
* "FrequencyDom_BodyBodyGyroMagnitude.mean"
* "FrequencyDom_BodyBodyGyroJerkMagnitude.mean"
* "FrequencyDom_BodyAcceleration.meanFrequency_X"
* "FrequencyDom_BodyAcceleration.meanFrequency_Y"
* "FrequencyDom_BodyAcceleration.meanFrequency_Z"
* "FrequencyDom_BodyAccelerationJerk.meanFrequency_X"
* "FrequencyDom_BodyAccelerationJerk.meanFrequency_Y"
* "FrequencyDom_BodyAccelerationJerk.meanFrequency_Z"
* "FrequencyDom_BodyGyro.meanFrequency_X"
* "FrequencyDom_BodyGyro.meanFrequency_Y"
* "FrequencyDom_BodyGyro.meanFrequency_Z"
* "FrequencyDom_BodyAccelerationMagnitude.meanFrequency"
* "FrequencyDom_BodyBodyAccelerationJerkMagnitude.meanFrequency"
* "FrequencyDom_BodyBodyGyroMagnitude.meanFrequency"
* "FrequencyDom_BodyBodyGyroJerkMagnitude.meanFrequency"
* "TimeDom_BodyAcceleration.std_X"
* "TimeDom_BodyAcceleration.std_Y"
* "TimeDom_BodyAcceleration.std_Z"
* "TimeDom_GravityAcceleration.std_X"
* "TimeDom_GravityAcceleration.std_Y"
* "TimeDom_GravityAcceleration.std_Z"
* "TimeDom_BodyAccelerationJerk.std_X"
* "TimeDom_BodyAccelerationJerk.std_Y"
* "TimeDom_BodyAccelerationJerk.std_Z"
* "TimeDom_BodyGyro.std_X"
* "TimeDom_BodyGyro.std_Y"
* "TimeDom_BodyGyro.std_Z"
* "TimeDom_BodyGyroJerk.std_X"
* "TimeDom_BodyGyroJerk.std_Y"
* "TimeDom_BodyGyroJerk.std_Z"
* "TimeDom_BodyAccelerationMagnitude.std"
* "TimeDom_GravityAccelerationMagnitude.std"
* "TimeDom_BodyAccelerationJerkMagnitude.std"
* "TimeDom_BodyGyroMagnitude.std"
* "TimeDom_BodyGyroJerkMagnitude.std"
* "FrequencyDom_BodyAcceleration.std_X"
* "FrequencyDom_BodyAcceleration.std_Y"
* "FrequencyDom_BodyAcceleration.std_Z"
* "FrequencyDom_BodyAccelerationJerk.std_X"
* "FrequencyDom_BodyAccelerationJerk.std_Y"
* "FrequencyDom_BodyAccelerationJerk.std_Z"
* "FrequencyDom_BodyGyro.std_X"
* "FrequencyDom_BodyGyro.std_Y"
* "FrequencyDom_BodyGyro.std_Z"
* "FrequencyDom_BodyAccelerationMagnitude.std"
* "FrequencyDom_BodyBodyAccelerationJerkMagnitude.std"
* "FrequencyDom_BodyBodyGyroMagnitude.std"
* "FrequencyDom_BodyBodyGyroJerkMagnitude.std"

Interpretation of activity labels:
1. Walking
2. Walking Upstairs
3. Walking Downstairs
4. Sitting
5. Standing
6. Laying
