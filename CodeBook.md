


#Variables
The dataset consists of 180 observations of 68 variables.

##Subject
The subjects of the test are identified by a ID number ranging from 1-30.
Although the subjects were initially divided into two non-overlapping groups for observation, they were combined again to form this dataset. 

##Activity
Six activities were observed. 

##Features
###Selection
The underlying data contained 561 time and frequency readings that were monitored for each activity for each subject.
From this set, 66 variables focusing on mean or standard deviation of [?] were selected. 
The selection excluded some variable with "mean" in the name: Freqmean and angle. The first, because we are interested only in means of [actual activity.] The second, because the angle already represent calculate fields [?]

Thus, this is the list of the 66 Features variables of interest.
featureLabelsSelected
 [1] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"           "tGravityAcc.mean...X"       
 [5] "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"        "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
 [9] "tBodyAccJerk.mean...Z"       "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
[13] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"      "tBodyAccMag.mean.."         
[17] "tGravityAccMag.mean.."       "tBodyAccJerkMag.mean.."      "tBodyGyroMag.mean.."         "tBodyGyroJerkMag.mean.."    
[21] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"           "fBodyAccJerk.mean...X"      
[25] "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"       "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[29] "fBodyGyro.mean...Z"          "fBodyAccMag.mean.."          "fBodyBodyAccJerkMag.mean.."  "fBodyBodyGyroMag.mean.."    
[33] "fBodyBodyGyroJerkMag.mean.." "tBodyAcc.std...X"            "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
[37] "tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"         "tBodyAccJerk.std...X"       
[41] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"        "tBodyGyro.std...X"           "tBodyGyro.std...Y"          
[45] "tBodyGyro.std...Z"           "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
[49] "tBodyAccMag.std.."           "tGravityAccMag.std.."        "tBodyAccJerkMag.std.."       "tBodyGyroMag.std.."         
[53] "tBodyGyroJerkMag.std.."      "fBodyAcc.std...X"            "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
[57] "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"        "fBodyGyro.std...X"          
[61] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"           "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.std.." 

###Calculation
Each [cell] row (observation) of the 66 Features-type  variables is a calculated value representing the mean value of that feature for a given activity and given subject.
