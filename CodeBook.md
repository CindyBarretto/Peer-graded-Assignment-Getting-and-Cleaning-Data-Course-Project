|title	output|Code Book for Tidy Dataset|
--------------|--------------------------|
|output       |html_document             |


Description of variables:

[1] Activity: Describes the activity done by subjects.
-WALKING
-WALKING_UPSTAIRS
-WALKING_DOWNSTAIRS
-SITTING
-STANDING
-LAYING

[2] Subject: Subject numbers.
There are total 30 subjects numbered from 1 to 30.

[Columns [3] to [68] contain average value of that feature(column name) for each activity and each subject. Prefix 't' denotes 'time domain signals' and 'f' denotes 'frequency domain signals'. '-X','-Y' and '-Z' are used to denote 3 axial signals in the X, Y and Z directions respectively.]
|--------------------------------|
[3] tBodyAcc-mean()-X
|--------------------------------|
[4] tBodyAcc-mean()-Y
|--------------------------------|
[5] tBodyAcc-mean()-Z
|--------------------------------|
[6] tBodyAcc-std()-X
|--------------------------------|
[7] tBodyAcc-std()-Y
|--------------------------------|
[8] tBodyAcc-std()-Z
|--------------------------------|
[9] tGravityAcc-mean()-X
|--------------------------------|
[10] tGravityAcc-mean()-Y
|--------------------------------|
[11] tGravityAcc-mean()-Z
|--------------------------------|
[12] tGravityAcc-std()-X
|--------------------------------|
[13] tGravityAcc-std()-Y
|--------------------------------|
[14] tGravityAcc-std()-Z
|--------------------------------|
[15] tBodyAccJerk-mean()-X
|--------------------------------|
[16] tBodyAccJerk-mean()-Y
|--------------------------------|
[17] tBodyAccJerk-mean()-Z
|--------------------------------|
[18] tBodyAccJerk-std()-X
|--------------------------------|
[19] tBodyAccJerk-std()-Y 
|--------------------------------|
[20] tBodyAccJerk-std()-Z
|--------------------------------|
[21] tBodyGyro-mean()-X
|--------------------------------|
[22] tBodyGyro-mean()-Y
|--------------------------------|
[23] tBodyGyro-mean()-Z
|--------------------------------|
[24] tBodyGyro-std()-X
|--------------------------------|
[25] tBodyGyro-std()-Y
|--------------------------------|
[26] tBodyGyro-std()-Z
|--------------------------------|
[27] tBodyGyroJerk-mean()-X
|--------------------------------|
[28] tBodyGyroJerk-mean()-Y
|--------------------------------|
[29] tBodyGyroJerk-mean()-Z
|--------------------------------|
[30] tBodyGyroJerk-std()-X
|--------------------------------|
[31] tBodyGyroJerk-std()-Y
|--------------------------------|
[32] tBodyGyroJerk-std()-Z
|--------------------------------|
[33] tBodyAccMag-mean()
|--------------------------------|
[34] tBodyAccMag-std()
|--------------------------------|
[35] tGravityAccMag-mean()
|--------------------------------|
[36] tGravityAccMag-std()
|--------------------------------|
[37] tBodyAccJerkMag-mean()
|--------------------------------|
[38] tBodyAccJerkMag-std()
|--------------------------------|
[39] tBodyGyroMag-mean()
|--------------------------------|
[40] tBodyGyroMag-std()
|--------------------------------|
[41] tBodyGyroJerkMag-mean()
|--------------------------------|
[42] tBodyGyroJerkMag-std()
|--------------------------------|
[43] fBodyAcc-mean()-X
|--------------------------------|
[44] fBodyAcc-mean()-Y
|--------------------------------|
[45] fBodyAcc-mean()-Z
|--------------------------------|
[46] fBodyAcc-std()-X
|--------------------------------|
[47] fBodyAcc-std()-Y
|--------------------------------|
[48] fBodyAcc-std()-Z
|--------------------------------|
[49] fBodyAccJerk-mean()-X
|--------------------------------|
[50] fBodyAccJerk-mean()-Y
|--------------------------------|
[51] fBodyAccJerk-mean()-Z
|--------------------------------|
[52] fBodyAccJerk-std()-X
|--------------------------------|
[53] fBodyAccJerk-std()-Y
|--------------------------------|
[54] fBodyAccJerk-std()-Z
|--------------------------------|
[55] fBodyGyro-mean()-X
|--------------------------------|
[56] fBodyGyro-mean()-Y
|--------------------------------|
[57] fBodyGyro-mean()-Z
|--------------------------------|
[58] fBodyGyro-std()-X
|--------------------------------|
[59] fBodyGyro-std()-Y
|--------------------------------|
[60] fBodyGyro-std()-Z
|--------------------------------|
[61] fBodyAccMag-mean()
|--------------------------------|
[62] fBodyAccMag-std()
|--------------------------------|
[63] fBodyBodyAccJerkMag-mean()
|--------------------------------|
[64] fBodyBodyAccJerkMag-std()
|--------------------------------|
[65] fBodyBodyGyroMag-mean()
|--------------------------------|
[66] fBodyBodyGyroMag-std()
|--------------------------------|
[67] fBodyBodyGyroJerkMag-mean()
|--------------------------------|
[68] fBodyBodyGyroJerkMag-std() 
|--------------------------------|

***Explanation of each file***

1.features.txt: Names of the 561 features.

2.activity_labels.txt: Names and IDs for each of the 6 activities.

3.X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.

4.subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer relted to each of the observations in X_train.txt.

5.y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

6.X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.

7.subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.

8.y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.
