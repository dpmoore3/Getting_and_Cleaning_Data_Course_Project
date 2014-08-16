Getting_and_Cleaning_Data_Course_Project
========================================
The script reads in the train and test txt files from the working directory (with header = FALSE).  The files X_test.txt and y_test.txt are saved directly in the working directory (they are not left in the zip folder).  

The training and test data sets are merged into one data set using rbind.

A data data frame is then created containing only the mean and standard deviation for each measurement.  There are 33 measurement variables, so this table will contain 66 columns.  This is done by first creating a data frame with the first variable and 10,299 rows (the number of rows contained in the merged data set).  Initially, the values are all zeros.

Next, the first variable values are replaced with the appropriate values from the merged data set.  Then, each additional required variable is added to the data frame by pulling from the appropriate column in the merged data set.  The end product is 33 columns of the means and 33 columns of standard deviations for the required variables.

Another data frame is created containing on the means for each of the 66 variables.  So, this is a 1 by 66 dimension table.  The means are calculated using "colMeans".

Lastly, a txt file is created to upload.




