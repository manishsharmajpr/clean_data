### Column Names 
  # Subject 
  
    subject
      
  # Activity name 
   
  	activity_name 
  
  # Average
  	
  	"tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tBodyAcc-std()-X",
  	"tBodyAcc-std()-Y","tBodyAcc-std()-Z","tGravityAcc-mean()-X","tGravityAcc-mean()-Y",
  	"tGravityAcc-mean()-Z","tGravityAcc-std()-X","tGravityAcc-std()-Y","tGravityAcc-std()-Z",
  	"tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z","tBodyAccJerk-std()-X",
  	"tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z","tBodyGyro-mean()-X","tBodyGyro-mean()-Y",
  	"tBodyGyro-mean()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z",
  	"tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z","tBodyGyroJerk-std()-X",
  	"tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-mean()","tBodyAccMag-std()","tGravityAccMag-mean()",
  	"tGravityAccMag-std()","tBodyAccJerkMag-mean()","tBodyAccJerkMag-std()","tBodyGyroMag-mean()","tBodyGyroMag-std()",
  	"tBodyGyroJerkMag-mean()","tBodyGyroJerkMag-std()","fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z",
  	"fBodyAcc-std()-X","fBodyAcc-std()-Y","fBodyAcc-std()-Z","fBodyAcc-meanFreq()-X","fBodyAcc-meanFreq()-Y",
  	"fBodyAcc-meanFreq()-Z","fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
  	"fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyAccJerk-meanFreq()-X",
  	"fBodyAccJerk-meanFreq()-Y","fBodyAccJerk-meanFreq()-Z","fBodyGyro-mean()-X","fBodyGyro-mean()-Y",
  	"fBodyGyro-mean()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z","fBodyGyro-meanFreq()-X",
  	"fBodyGyro-meanFreq()-Y","fBodyGyro-meanFreq()-Z","fBodyAccMag-mean()","fBodyAccMag-std()",
  	"fBodyAccMag-meanFreq()","fBodyBodyAccJerkMag-mean()","fBodyBodyAccJerkMag-std()","fBodyBodyAccJerkMag-meanFreq()",
  	"fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()","fBodyBodyGyroMag-meanFreq()","fBodyBodyGyroJerkMag-mean()",
  	"fBodyBodyGyroJerkMag-std()","fBodyBodyGyroJerkMag-meanFreq()"
   
  
  
### Variables  
  subject_test -- for reading "./data/UCI HAR Dataset/test/subject_test.txt" file
  X_test -- for reading "./data/UCI HAR Dataset/test/X_test.txt"  file
  y_test -- for reading "./data/UCI HAR Dataset/test/y_test.txt" file
  
  
  subject_train <- for reading "./data/UCI HAR Dataset/train/subject_train.txt" file
  X_train -- for reading "./data/UCI HAR Dataset/train/X_train.txt" file
  y_train -- for reading "./data/UCI HAR Dataset/train/y_train.txt" file
  
  # bind the test and train dataset
  subject  -- for binding subject_test and subject_train
  X -- for binding X_test and X_train 
  y -fo- r binding y_test and y_train
  
  
  # change the column names 
  subject_column_name -- for subject
  X_column_names <- for measurement column names
  y_column_name <-  for activity column name
  
  # Extracts only the measurements on the mean and standard deviation for each measurement.
   
  X_mean_std -- for extracting the mean and standard deviation
  
  # bind the dataset for subject,activity name and measurement
  
  dataset  
  
  
  # change descriptive activity names to name the activities in the data set. 
  
  actvities  -- for reading the activity_labels.txt
  dataset -- use same dataset after changing the to activity names
  
  #Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  datasetMelt -- for melting the dataset
  tidyDataset -- for casting the data set
  