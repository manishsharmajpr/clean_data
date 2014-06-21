createTidyDataSet <- function (){

  
  library(reshape2)
  
  if(!file.exists("./data")){dir.create("./data")}
  fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="./data/dataset.zip",method="curl")
  unzip("./data/dataset.zip",exdir = "./data")
  
  # read the training and the test sets to create one data set.
  
  subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
  X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
  
  
  subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
  X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
  
  # bind the test and train dataset
  subject  <- rbind(subject_test,subject_train)
  X <- rbind(X_test, X_train)
  y <- rbind(y_test, y_train)
  
  
  # change the column names 
  subject_column_name <- c("subject")
  X_column_names <- read.table("./data/UCI HAR Dataset/features.txt")
  y_column_name <-  c("activity")
  
  colnames(subject) <- subject_column_name
  colnames(X) <- X_column_names$V2
  colnames(y) <- y_column_name
  
  # Extracts only the measurements on the mean and standard deviation for each measurement.
   
  X_mean_std <- X[,grep(paste(c("mean","std"),collapse="|"),X_column_names$V2)]
  
  # bind the dataset for subject,activity name and measurement
  
  dataset <-cbind(X_mean_std,subject)
  dataset <-cbind(dataset,y)
  
  
  # change descriptive activity names to name the activities in the data set. 
  
  actvities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
  dataset <- within(dataset, activity_name <- actvities$V2[activity])
  dataset$activity <- NULL  #remove activity column 
  
  #Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  datasetMelt <- melt(dataset,id=c("subject","activity_name"),measure.vars=colnames(X_mean_std))  # melt the data
  tidyDataset <- dcast(datasetMelt, subject+activity_name ~ variable,mean) # casting the data set
  
  write.csv(tidyDataset, file = "tidyDataset.txt",row.names=FALSE)
  
}