library(dplyr)
#1-MERGE TRAINING AND TEST SETS 
#1.1. Read data files.
#All path to files are relative to the working directory where this
#script is saved. Data stem from ./UCI HAR Dataset/

message("reading train files ...")
X_train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt",sep = "")
Y_train<- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
Subj_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
message("reading test files ...")
X_test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt",sep = "")
Y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
Subj_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
#1.2. Merge datasets
X_unified <- rbind(X_train, X_test)  
Y_unified <- rbind(Y_train, Y_test)
Subj_unified <- rbind(Subj_train, Subj_test)
names(Subj_unified) <- "subject" #Assing descriptive name.
                                 #Names for the resting variables are
                                 #assigned below
rm(X_train, X_test, Subj_train, Subj_test, Y_train, Y_test)  #Release memory. Remove unnecesary tables

message("Organizing and aggregating data ...")

#2-EXTRACT MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION
# Will read variable names from file features.txt; Var labels which contain the string "mean" or "std"
#are added to the new dataset.
var_names <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
var_names[, 2] <- make.names(var_names[,2], unique=TRUE) #makes syntactically valid names
selected_vars <- (regexpr("mean", var_names[, 2])>0 
                | regexpr("std", var_names[, 2])>0)
mean_sd_dataset <- X_unified[, selected_vars]

rm(X_unified) 

#3. NAME ACTIVITIES IN THE DATA SET
#Activities codes for each observation are stored in the Y_unified table created above,
#and activity labels are in the activity_labels.txt file. So activity_labels will be read
#and both tables will be joined by activity code (V1)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
Y_unified <- left_join(Y_unified, activity_labels, by = "V1")
names(Y_unified) <- c("activity_code", "activity_name") #Assign descriptive names

#4. LABEL THE DATA WITH DESCRIPTIVE VARIABLE NAMES
#Descriptive variable names are stored in var_names table created above. 
#Only selected_vars are included in the mean_sd_dataset. 
names(mean_sd_dataset) <- var_names[selected_vars, 2]   #assign names.


#Merge the mean_sd_dataset with the activities (Y_unified) and subject 
#(Subj_unified) datasets. This completes all steps up to 4.
mean_sd_dataset <- cbind(Subj_unified, Y_unified, mean_sd_dataset)
rm(Subj_unified, Y_unified, var_names, activity_labels, selected_vars)

#5.FROM THE DATA SET IN STEP 4, CREATE A TIDY DATA SET WITH THE AVERAGE
#OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.
mean_sd_dataset <- mean_sd_dataset[, c(1, 3:ncol(mean_sd_dataset))]
final_dataset <- aggregate(mean_sd_dataset[3:81],by = list(activity = mean_sd_dataset$activity,
                                                       subject = mean_sd_dataset$subject), 
                           mean)
rm(mean_sd_dataset)
write.table(final_dataset, "./Final_dataset.txt", row.names = FALSE)
message("Done")
