trainLabels <- read.table("train/y_train.txt")
trainSet <- read.table("train/X_train.txt")

testLabels <- read.table("test/y_test.txt")
testSet <- read.table("test/X_test.txt")

features <- read.table("features.txt")
names(trainSet) <- features$V2
names(testSet) <- features$V2

names(trainLabels) <- c("Activity")
names(testLabels) <- c("Activity")

activityLabel <- read.table("activity_labels.txt",colClasses = "character")

for(i in activityLabel$V1){
  
  trainLabels$Activity <- gsub(i,subset(activityLabel,V1==i)$V2,trainLabels$Activity)
  testLabels$Activity <- gsub(i,subset(activityLabel,V1==i)$V2,testLabels$Activity)
  
}

subjectTrain <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")

names(subjectTrain) <- c("VolunteerID")
names(subjectTest) <- c("VolunteerID")

trainLabels <- cbind(subjectTrain,trainLabels)
testLabels <- cbind(subjectTest,testLabels)

LabeledTrainingSet <- cbind(trainLabels,trainSet)
LabeledTestingSet <- cbind(testLabels,testSet)

mergedSet <- rbind(LabeledTrainingSet,LabeledTestingSet)


meanNstdNames <- grep('Volunteer|Activity|mean|std',names(mergedSet),value = TRUE)
meanNstd <- mergedSet[meanNstdNames]


summarizedMeanByActivityNSubject <- aggregate(meanNstd[3:81],by=list(Activity=meanNstd$Activity,VolunteerID=meanNstd$VolunteerID),mean)

write.table(mergedSet,"merged_Training_and_Testing_Data_Sets.txt")
write.table(meanNstd,"Measures_on_Mean_and_Standard_Deviation.txt")
write.table(summarizedMeanByActivityNSubject,"summarized_Mean_By_Activity_and_Subject.txt",row.names = FALSE)
