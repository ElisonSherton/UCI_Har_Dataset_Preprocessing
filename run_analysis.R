rm(list = ls())
library(dplyr)
library(readr)
dir = "C:\\Users\\nayak\\Desktop\\Johns_Hopkins_DS\\Getting And Cleaning Data\\UCI HAR Dataset"
test_dir = "C:\\Users\\nayak\\Desktop\\Johns_Hopkins_DS\\Getting And Cleaning Data\\UCI HAR Dataset\\test"
train_dir = "C:\\Users\\nayak\\Desktop\\Johns_Hopkins_DS\\Getting And Cleaning Data\\UCI HAR Dataset\\train"


# Step - 1: Merging the test and train sets with all their info together
read <- function(dir, fname){
  setwd(dir)
  df = read.table(fname)
  df
}

# Get feature names in a vector names
names = read.table("C:\\Users\\nayak\\Desktop\\Johns_Hopkins_DS\\Getting And Cleaning Data\\UCI HAR Dataset\\features.txt", header = F)
names = names[,2]

# Get Activity Labels in a vector and give appropriate column names
activity_Labels = read(dir, "activity_labels.txt")
names(activity_Labels) = c("Label", "Activity")

# Extract the details about the subjects
subject_details_train = read(train_dir, "subject_train.txt")
subject_details_test = read(test_dir, "subject_test.txt")

# Read the features for training data in Xts
Xts = read(test_dir, "X_test.txt")
colnames(Xts) = names

# Read the target values for test data and append them with test target values
yts = read(test_dir, "y_test.txt")
yts = cbind(yts,subject_details_test)
colnames(yts) = c("Activity", "Subject")

# Read the features for train data
Xtr = read(train_dir, "X_train.txt")
colnames(Xtr) = names

# Read the target values for train data and append them with train target values
ytr = read(train_dir, "y_train.txt")
ytr = cbind(ytr, subject_details_train)
colnames(ytr) = c("Activity", "Subject")

# Putting all the data together
X = rbind(Xts,Xtr)
y = tbl_df(rbind(yts,ytr))


# Step 2 - Extract all columns which explain descriptive stats (mean and std) of our data
mean_indices = grep("mean()", names, fixed = TRUE)
meanFreq_indices = grep("meanFreq()",names, fixed = TRUE)
std_indices = grep("std()", names, fixed = TRUE)
all_indices = c(mean_indices,meanFreq_indices,std_indices)
all_data = data.frame(X[ , all_indices])
all_data = cbind(all_data, y)

# Step 3 - Assign appropriate names to records given their labels.
all_data$ActivityName = sapply(all_data$Activity, function(x){activity_Labels$Activity[x]})

# Step 4 -
# Give Intuitive names to all the columns
# The prefix t in different observations stands for data collected which is wrt time i.e. in Time Domain
# Similarly, the prefix f stands for observations converted to frequency domain by applying FFT on Time Domain observations
# Mag stands for Magnitude which is accordingly replaced.
# Freq stands for Frequency Domain which is also replaced similarly.

names(all_data) = gsub("^t", "TimeDom_",colnames(all_data))
names(all_data) = gsub("Mag", "Magnitude", colnames(all_data))
names(all_data) = gsub("Freq", "Frequency", colnames(all_data))
names(all_data) = gsub("^f", "FrequencyDom_",colnames(all_data), ignore.case = FALSE)
names(all_data) = gsub("Acc", "Acceleration", colnames(all_data))
names(all_data) = gsub("\\.\\.\\.", "_", colnames(all_data))
names(all_data) = gsub("\\.\\.", "", colnames(all_data))

# Step 5 - Create tidy data with avg of each variable for each activity and each subset
all_data = tbl_df(all_data)
required_data = all_data%>%
                    group_by(Subject, ActivityName)%>%
                    summarise_all(funs(mean))%>%
                    arrange(Subject, Activity)
sequence = c(1,82,2, 3:81)
required_data = required_data[,sequence]
setwd("C:\\Users\\nayak\\Desktop\\Johns_Hopkins_DS\\Getting And Cleaning Data")
write.table(required_data, file = "Tidy_data.csv", sep = ",", row.names = FALSE)
