# Getting and Cleaning Data Course Project

# read subject and y (activity) files

subject_test <- read.table("subject_test.txt", header=FALSE)
subject_train <- read.table("subject_train.txt", header=FALSE)
activity_test <- read.table("y_test.txt", header=FALSE)
activity_train <- read.table("y_train.txt", header=FALSE)
activity_labels <- read.table("activity_labels.txt", header=FALSE)

# read training data set
train <- read.table("X_train.txt", sep="",header=FALSE)

# read test data set
test <- read.table("X_test.txt", sep = "", header=FALSE)

# merge activity labels and activity test & train
activity_test_labeled <- merge(activity_test,activity_labels, by.x="V1",by.y="V1",all=TRUE)
activity_train_labeled <- merge(activity_train,activity_labels, by.x="V1",by.y="V1",all=TRUE)

# combine activity and subject labels with training data
train2 <- cbind(train,activity_train_labeled,subject_train)

# combine activity and subject labels with test data
test2 <- cbind(test,activity_test_labeled,subject_test)

# combine the data sets
total <- rbind(train2,test2)

# create new data frame

total_2 <- data.frame(body_acceleration_signal_x_mean=numeric(10299))

# extracts mean for each measurement and uses descriptive activity names

total_2$body_acceleration_signal_x_mean <- total[,1]
total_2$body_acceleration_signal_y_mean <- total[,2]
total_2$body_acceleration_signal_z_mean <- total[,3]
total_2$gravity_acceleration_signal_x_mean <- total[,41]
total_2$gravity_acceleration_signal_y_mean <- total[,42]
total_2$gravity_acceleration_signal_z_mean <- total[,43]
total_2$body_acceleration_jerk_signal_x_mean <- total[,81]
total_2$body_acceleration_jerk_signal_y_mean <- total[,82]
total_2$body_acceleration_jerk_signal_z_mean <- total[,83]
total_2$body_gyro_signal_x_mean <- total[,121]
total_2$body_gyro_signal_y_mean <- total[,122]
total_2$body_gyro_signal_z_mean <- total[,123]
total_2$body_gyro_jerk_signal_x_mean <- total[,161]
total_2$body_gyro_jerk_signal_y_mean <- total[,162]
total_2$body_gyro_jerk_signal_z_mean <- total[,163]
total_2$body_acceleration_magnitude_mean <- total[,201]
total_2$gravity_acceleration_magnitude_mean <- total[,214]
total_2$body_acceleration_jerk_magnitude_mean <- total[,227]
total_2$body_gyro_magnitude_mean <- total[,240]
total_2$body_gyro_jerk_magnitude_mean <- total[,253]
total_2$body_acceleration_frequency_domain_signal_x_mean <- total[,266]
total_2$body_acceleration_frequency_domain_signal_y_mean <- total[,267]
total_2$body_acceleration_frequency_domain_signal_z_mean <- total[,268]
total_2$body_acceleration_jerk_frequency_domain_signal_x_mean <- total[,345]
total_2$body_acceleration_jerk_frequency_domain_signal_y_mean <- total[,346]
total_2$body_acceleration_jerk_frequency_domain_signal_z_mean <- total[,347]
total_2$body_gyro_frequency_domain_signal_x_mean <- total[,424]
total_2$body_gyro_frequency_domain_signal_y_mean <- total[,425]
total_2$body_gyro_frequency_domain_signal_z_mean <- total[,426]
total_2$body_acceleration_magnitude_frequency_domain_signal_mean <- total[,503]
total_2$body_acceleration_jerk_magnitude_frequency_domain_signal_mean <- total[,516]
total_2$body_gyro_magnitude_frequency_domain_signal_mean <- total[,529]
total_2$body_gyro_jerk_magnitude_frequency_domain_signal_mean <- total[,542]

# extracts standard deviation for each measurement and uses descriptive activity names

total_2$body_acceleration_signal_x_std_dev <- total[,4]
total_2$body_acceleration_signal_y_std_dev <- total[,5]
total_2$body_acceleration_signal_z_std_dev <- total[,6]
total_2$gravity_acceleration_signal_x_std_dev <- total[,44]
total_2$gravity_acceleration_signal_y_std_dev <- total[,45]
total_2$gravity_acceleration_signal_z_std_dev <- total[,46]
total_2$body_acceleration_jerk_signal_x_std_dev <- total[,84]
total_2$body_acceleration_jerk_signal_y_std_dev <- total[,85]
total_2$body_acceleration_jerk_signal_z_std_dev <- total[,86]
total_2$body_gyro_signal_x_std_dev <- total[,124]
total_2$body_gyro_signal_y_std_dev <- total[,125]
total_2$body_gyro_signal_z_std_dev <- total[,126]
total_2$body_gyro_jerk_signal_x_std_dev <- total[,164]
total_2$body_gyro_jerk_signal_y_std_dev <- total[,165]
total_2$body_gyro_jerk_signal_z_std_dev <- total[,166]
total_2$body_acceleration_magnitude_std_dev <- total[,202]
total_2$gravity_acceleration_magnitude_std_dev <- total[,215]
total_2$body_acceleration_jerk_magnitude_std_dev <- total[,228]
total_2$body_gyro_magnitude_std_dev <- total[,241]
total_2$body_gyro_jerk_magnitude_std_dev <- total[,254]
total_2$body_acceleration_frequency_domain_signal_x_std_dev <- total[,269]
total_2$body_acceleration_frequency_domain_signal_y_std_dev <- total[,270]
total_2$body_acceleration_frequency_domain_signal_z_std_dev <- total[,271]
total_2$body_acceleration_jerk_frequency_domain_signal_x_std_dev <- total[,348]
total_2$body_acceleration_jerk_frequency_domain_signal_y_std_dev <- total[,349]
total_2$body_acceleration_jerk_frequency_domain_signal_z_std_dev <- total[,350]
total_2$body_gyro_frequency_domain_signal_x_std_dev <- total[,427]
total_2$body_gyro_frequency_domain_signal_y_std_dev <- total[,428]
total_2$body_gyro_frequency_domain_signal_z_std_dev <- total[,429]
total_2$body_acceleration_magnitude_frequency_domain_signal_std_dev <- total[,504]
total_2$body_acceleration_jerk_magnitude_frequency_domain_signal_std_dev <- total[,517]
total_2$body_gyro_magnitude_frequency_domain_signal_std_dev <- total[,530]
total_2$body_gyro_jerk_magnitude_frequency_domain_signal_std_dev <- total[,543]

# add activity and subject labels

total_2$activity <- total[,563]
total_2$subject <- total[,564]

# total_2 is the extraction of the mean and Standard deviation for each measurement 
#    with activity and subject labels
# it uses descriptive activity names and appropriately labels the data set with descriptive variable names

# creates a second, independent tidy data set with the average of each variable 
#    for each activity and each subject

variable_means <- aggregate(total_2,by=total_2$activity,FUN = "mean")

# replace Group.1 & Group.2 labels with descriptive labels for activity and subject

colnames(variable_means)[1] <- "Activity"
colnames(variable_means)[2] <- "Subject"

# create a txt file to upload using row.name=FALSE

write.table(variable_means,file="variable_means.txt",row.name=FALSE)

