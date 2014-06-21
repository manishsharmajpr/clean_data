### Introduction

The purpose of this program to clean and create tidy data set. 

### From where did I obtain original data and where I extracted this data 

I obtain the data for this assignment from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

I extracted this data in "data" folder

### how I processed for creating the tidy dataset

#### Download and extract 

download and extract the data form above give location to "data" dir and extract it 

#### Read the data from files in "data/UCI HAR Dataset" folder from files :

#####for training -
./data/UCI HAR Dataset/test/subject_test.txt
./data/UCI HAR Dataset/test/X_test.txt
./data/UCI HAR Dataset/test/y_test.txt

#####for test -

 ./data/UCI HAR Dataset/train/subject_train.txt
 ./data/UCI HAR Dataset/train/X_train.txt
 ./data/UCI HAR Dataset/train/y_train.txt


#### Bind the test and training data in variable 
 subject -- for test and training subject 
 X  -- for X_test and X_train
 y - - for y_test and y_train 
 
#### Changed the column names for above data sets 
 
 subject -- with column name 'subject'
 X -- with column names in data/UCI HAR Dataset/features.txt
 y -- with column name 'activity'
 
#### Extracts mean and std 

extract only the measurements on the mean and standard deviation for each measurement from 'X' data set.
 
#### Bind the datasets in single dataset

bind subject ('subject') , y ('activity') and X ('measurement') in single dataset with variable name 'dataset'
 
#### Change descriptive activity names to name the activities in the data .

I used here file '/data/UCI HAR Dataset/activity_labels.txt'

#### Create tidy dataset

creates a second, independent tidy data set with the average of each variable for each activity and each subject. I
used here melt and dcast function.

#### with tidy dataset in a file 

Write the tidy dataset in file "tidyDataset.txt". 

 
 
 