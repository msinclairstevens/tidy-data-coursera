mycreatetidy <- function() {
  #Check environment
  library(dplyr)
  
  # Check and set working directory.
  getwd()
  
  # Task 1: Create a data set
  # Read untidy data files into R.
  # Appropriately label the data set with descriptive variable names.  
  # Rename variables
  # Select
  # Merge the training and the test sets to create one data set.
  
  # Read in for replacing activity numbers with names.
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
  
  # Read in for labeling columns
  feature_labels <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
  featureLabelsLong <- make.names(feature_labels$V2, unique=TRUE)
  
  # Read in data. Rename column variables.
  subjects_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  names(subjects_test)[1] <- "Subject"
   
  activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
  names(activity_test)[1] <- "Activity"
  
  features_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  names(features_test) <- featureLabelsLong
  
  subjects_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  names(subjects_train)[1] <- "Subject"
  
  activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
  names(activity_train)[1] <- "Activity"
  
  features_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  names(features_train) <- featureLabelsLong
  
  # Extracts only the measurements on the mean and standard deviation
  # for each measurement. (That is activity.)
  
  # Select the columns of interest from the 561 time and frequency measurements.
  featuresSub_test <- select(features_test,
                             contains("mean"), 
                             contains("std"), 
                             -contains("meanFreq"), 
                             -contains("angle")
  )
  
  featuresSub_train <- select(features_train,
                              contains("mean"), 
                              contains("std"), 
                              -contains("meanFreq"), 
                              -contains("angle")
  )
  
  #Create the train and test datasets: subject, activity, selected features.
  test_dataset <- cbind(subjects_test, activity_test, featuresSub_test)
  train_dataset <- cbind(subjects_train, activity_train, featuresSub_train)
  
  # Merge the train and test datasets
  combined_dataset <- rbind(test_dataset, train_dataset)
  
  
  # Task 2: Create a tidy data set.
  # Iterate over each feature column.
  # Calculate the mean.
  # Append the calculated column to the tidy data frame.
  
  featureLabelsSelected <- names(featuresSub_test)
  tidy <- select(combined_dataset, Subject, Activity)
  for (i in featureLabelsSelected) {
    header <- select(combined_dataset, Subject, Activity)
    Feature <- combined_dataset[,i] # Because for some reason it can't read this.
    each <- cbind(header, Feature)
    grouped <- group_by(each, Subject, Activity) 
    mutated <- mutate(grouped, Feature = mean(Feature)) 
    names(mutated)[3] <- paste("Mean:", i) 
    simplified <- unique(mutated)
    tidy <- inner_join(tidy, simplified)
  }
  print(head(tidy))
  final1 <- unique(tidy)
  
  # Replace the numeric values of the activities with their corresponding English names.
  label <- activity_labels[,2]
  activity_number<-final1$Activity
  b <-length(activity_number)
  for (i in 1:b){
    final1[i,2] <-label[activity_number[i]]
    
  }
  
  # Arrange the columns by subject and activity.
  final2 <- arrange(final1, Subject, Activity)
  
  # Task 3: Write tidy data set to an external text file. 
  # Delete row names.
  # Use a tab separator.
  write.table(final2, "./tidy.txt", row.names=FALSE, sep="\t")

}