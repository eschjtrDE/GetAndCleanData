library(plyr)
library(dplyr)

# read files
train_set <- read.table("./UCI_HAR_Dataset/train/X_train.txt",nrows = 7352, header = FALSE)
test_set <- read.table("./UCI_HAR_Dataset/test/X_test.txt",nrows = 2947, header = FALSE)
train_act <- read.table("./UCI_HAR_Dataset/train/y_train.txt",nrows = 7352, header = FALSE)
test_act <- read.table("./UCI_HAR_Dataset/test/y_test.txt",nrows = 2947, header = FALSE)
train_sub <- read.table("./UCI_HAR_Dataset/train/subject_train.txt",nrows = 7352, header = FALSE)
test_sub <- read.table("./UCI_HAR_Dataset/test/subject_test.txt",nrows = 2947, header = FALSE)
act_lables <- read.table("./UCI_HAR_Dataset/activity_labels.txt",nrows = 6, header = FALSE, 
                         colClasses = c("factor", "factor"))
features <- read.table("./UCI_HAR_Dataset/features.txt",nrows = 561, header = FALSE, stringsAsFactors = FALSE)


# Merge the training and the test sets
set <- rbind(train_set,test_set)

#Extract only the measurements on the mean and standard deviation for each measurement 
features <- features[,2]
mean_std_features <- grepl(".*(-)(mean|std)(\\().*",x = features)
features <- features[mean_std_features]
set <- set[,mean_std_features]

#Use descriptive activity names to name the activities in the data set
act <- rbind(train_act, test_act)
act <- as.factor(act[,1])
set$activity <- mapvalues(act, from = levels(act_lables[,1]), to =levels(act_lables[,2]))

#Appropriately labels the data set with descriptive variable names. 
names(set) <- c(features,"activity")

#creates a second, independent tidy data set with
#the average of each variable for each activity and each subject.
subject <- rbind(train_sub,test_sub)
set$subject <- as.factor(subject[,1])
df <- tbl_df(set)
result <- df %>% group_by(activity,subject) %>%  summarise_each(funs(mean))
colnames(result) <- paste("Average", colnames(result), sep = "_")
colnames(result)[1] <- "Activity"
colnames(result)[2] <- "Subject"

# write to file
write.table(result,file = "data_set.txt",row.name=FALSE)
