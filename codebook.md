<h1>Codebook. Getting and Cleaning Data Course Project</h1>
<h2>The final result is a dataset (Final_dataset)</h2>
<h2>The script run_analysis.R produces Final_dataset from the Human Activity Recognition Using Smartphones Data Set</h2>
<h2>The script binds data from X_test.txt and X_train.txt datasets which contain around 3000 and 7300 observations respectively of 561 variables into a single data set of some 10300 observations. Files Y_test.txt, Y_train.txt, Subject_test.txt and Subject_train.txt contain the type of experiment and the subject of the measurements for each of the 10300 observations. These files are joined to the measurements data set to produce a single data set with all the information.
Another file contains the names of the variables which are appended to the unified data set.
The variables of interest, i.e. those who contain "mean" or "std" in their names are subsetted for further processing </h2>
* activity
* subject