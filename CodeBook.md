## CodeBook for the 'Getting and Cleaning Data' Assignment 
# prepared by Emmanuel Giyoh Ngala


This codebook updates the information on the original codebook and data set
This refers to the R script run_analysis.R

#1. - The script reads the Training set and Labels and stores them in the data frames 

'trainSet' and 'trainLabels' respectively

#2. - Similarly for the test dataset and label 

'testSet' and 'testLabels' 

#3. - The 651 feature are read into the data frame 

'features'

Which are used to name both the training and the test datasets

#4. - Activity Labels [1-6] are replaced by the user friendly activity name

'activityLabel' adding 2 feature ['VolunteerID' and 'Activity'] to the data set

#5. - The labels are bound to the data set and the data sets are merged into the data frame

'mergedSet'  10,299 x 563

#6. - Mean and Standard Deviation are extracted from 'mergedSet' into

'meanNstd'   10,299 x 81

#7. - Summary mean information grouped by Activity and Subject[aka VolunteerID] into  

'summarizedMeanByActivityNSubject'  180 x 81

#8. - Data frames are written to file as tables

'mergedSet' written to "merged_Training_and_Testing_Data_Sets.txt"
'meanNstd' written to "Measures_on_Mean_and_Standard_Deviation.txt"
'summarizedMeanByActivityNSubject' written to "summarized_Mean_By_Activity_and_Subject.txt"

Please refer any questions to giyoh@programmer.net