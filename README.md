Getting_and_Cleaning_Data_Course_Project
========================================
The course project instructions contained the following link to the raw data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Features.txt contains the data fields in the tables and their column numbers.  This was the source for determining the appropriate column numbers to use to find the mean and standard deviations of the measurements.

The raw data files subject_test.txt, subject_train.txt, y_test.txt, y_train.txt, activity_labels.txt, X_test.txt and X_train.txt are saved directly in the working directory (they are not left in the zip folder).  

The script reads in all the txt files above from the working directory (with header = FALSE).  

The following data merges are performed:
 - descriptive activity labels are merged with the activity codes for both the test and train files
 - the data, activity labels and subject levels are combined for the train data
 - the data, activity labels and subject levels are combined for the test data
 - the train and test data sets with labels are combined
 
A data frame is then created containing only the mean and standard deviation for each measurement as well as the activity and subject labels.  There are 33 measurement variables, so this table will contain 66 measurement columns (mean and standard deviation) and two label columns.  This is done by first creating a data frame with the first variable and 10,299 rows (the number of rows contained in the combined data set).  Initially, the values are all zeros.

Next, the first variable values are replaced with the appropriate values from the combined data set.  Then, each additional required variable is added to the data frame by pulling from the appropriate column in the combined data set.  Each variable has a descriptive name.  The end product is 33 columns of the means and 33 columns of standard deviations for the required variables, each with a descriptive variable name plus activity and subject labels.

Another data frame is created containing only the means for each activity, subject and measurement combination.  The aggregate function is used to accomplish this.

Lastly, a txt file is created to upload.




