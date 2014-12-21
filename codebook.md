<h1>Codebook. Getting and Cleaning Data Course Project.</h1>
<h2>The final result is Final_dataset.txt</p>
<p>The script run_analysis.R produces Final_dataset from the Human Activity Recognition Using Smartphones data set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)</p>
<p>The script binds data from X_test.txt and X_train.txt files which contain around 3000 and 7300 observations respectively of 561 variables into a single data set of some 10300 observations. Files Y_test.txt, Y_train.txt, Subject_test.txt and Subject_train.txt contain the activity performed by the subject and the subject of the measurements for each of the 10300 observations. These files are joined to the measurements data set to produce a single data set with all the information. 
The file features.txt contains the names of the 561 variables which are extracted and applied to the unified data set.
The file activity_labels.txt contains the names of the 6 activities performed by the subjects and it is used to generate a new
variable which links activity codes (from Y_test and Y_train) to human-readable activity_names.</p>
<p>The variables of interest, i.e. those containing "mean" or "std" in their names are subsetted for further processing. </p>
<p> Finally, the mean of the selected variables grouped by subject and activity is calculated to produce Final_dataset. </p>

<h3> List of variables of Final_dataset: </h3>

*"activity"                  factor 6 values
            <p>"LAYING"</p>
            <p>"SITTING"</p>
            <p>"STANDING"</p>
            <p>"WALKING"</p>
            <p>"WALKING_DOWNSTAIRS"</p>
            <p>"WALKING_UPSTAIRS"</p>
* "subject"                   Subject number, 1:30.
<p> the remaining variables listed below are numeric. They are the mean of all the observations aggregated by subject and activity of the variable name in the original datasets. The meaning of the variable name is defined in the original dataset and can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#</p>
* "tBodyAcc.mean...X"
* "tBodyAcc.mean...Y"
* "tBodyAcc.mean...Z"
* "tBodyAcc.std...X"
* "tBodyAcc.std...Y"
* "tBodyAcc.std...Z"
* "tGravityAcc.mean...X"
* "tGravityAcc.mean...Y"
* "tGravityAcc.mean...Z"
* "tGravityAcc.std...X"
* "tGravityAcc.std...Y"
* "tGravityAcc.std...Z"
* "tBodyAccJerk.mean...X"
* "tBodyAccJerk.mean...Y"
* "tBodyAccJerk.mean...Z"
* "tBodyAccJerk.std...X"
* "tBodyAccJerk.std...Y"
* "tBodyAccJerk.std...Z"
* "tBodyGyro.mean...X"
* "tBodyGyro.mean...Y"
* "tBodyGyro.mean...Z"
* "tBodyGyro.std...X"
* "tBodyGyro.std...Y"
* "tBodyGyro.std...Z"
* "tBodyGyroJerk.mean...X"
* "tBodyGyroJerk.mean...Y"
* "tBodyGyroJerk.mean...Z"
* "tBodyGyroJerk.std...X"
* "tBodyGyroJerk.std...Y"
* "tBodyGyroJerk.std...Z"
* "tBodyAccMag.mean.."
* "tBodyAccMag.std.."
* "tGravityAccMag.mean.."
* "tGravityAccMag.std.."
* "tBodyAccJerkMag.mean.."
* "tBodyAccJerkMag.std.."
* "tBodyGyroMag.mean.."
* "tBodyGyroMag.std.."
* "tBodyGyroJerkMag.mean.."
* "tBodyGyroJerkMag.std.."
* "fBodyAcc.mean...X"
* "fBodyAcc.mean...Y"
* "fBodyAcc.mean...Z"
* "fBodyAcc.std...X"
* "fBodyAcc.std...Y"
* "fBodyAcc.std...Z"
* "fBodyAcc.meanFreq...X"
* "fBodyAcc.meanFreq...Y"
* "fBodyAcc.meanFreq...Z"
* "fBodyAccJerk.mean...X"
* "fBodyAccJerk.mean...Y"
* "fBodyAccJerk.mean...Z"
* "fBodyAccJerk.std...X"
* "fBodyAccJerk.std...Y"
* "fBodyAccJerk.std...Z"
* "fBodyAccJerk.meanFreq...X"
* "fBodyAccJerk.meanFreq...Y"
* "fBodyAccJerk.meanFreq...Z"
* "fBodyGyro.mean...X"
* "fBodyGyro.mean...Y"
* "fBodyGyro.mean...Z"
* "fBodyGyro.std...X"
* "fBodyGyro.std...Y"
* "fBodyGyro.std...Z"
* "fBodyGyro.meanFreq...X"
* "fBodyGyro.meanFreq...Y"
* "fBodyGyro.meanFreq...Z"
* "fBodyAccMag.mean.."
* "fBodyAccMag.std.."
* "fBodyAccMag.meanFreq.."
* "fBodyBodyAccJerkMag.mean.."
* "fBodyBodyAccJerkMag.std.."
* "fBodyBodyAccJerkMag.meanFreq.."
* "fBodyBodyGyroMag.mean.."
* "fBodyBodyGyroMag.std.."
* "fBodyBodyGyroMag.meanFreq.."
* "fBodyBodyGyroJerkMag.mean.."
* "fBodyBodyGyroJerkMag.std.."
* "fBodyBodyGyroJerkMag.meanFreq.."
