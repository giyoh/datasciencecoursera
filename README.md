## README for the 'Getting and Cleaning Data' Assignment 
# prepared by Emmanuel Giyoh Ngala

This README describes all the files and how they relate with one another.

#- run_analysis.R 


Is the R script that reads the original Training and Testing Data Sets
Merges the data sets into one data set called 'MergedSet' in the R script
The 'MergedSet' is written to the "merged_Training_and_Testing_Data_Sets.txt" as a table
Measures of mean and standard deviation are extracted from the 'MergedSet' 
And stored in 'meanNstd' which is also written to the file "Measures_on_Mean_and_Standard_Deviation.txt"
Summary of the mean grouped by the Activity Labels for each subject are stored in 'summarizedMeanByActivityNSubject'
Which is written to the file "summarized_Mean_By_Activity_and_Subject.txt"

All the data is clean and the data on the files can be read with simple read.table



#- "merged_Training_and_Testing_Data_Sets.txt"


This is the file that stores the tidy data frame for the merged Training and Testing data sets
It is written as a table and can be read as a table
Rows = 10,299  Columns = 563


#- "Measures_on_Mean_and_Standard_Deviation.txt"


This file stores the tidy data frame of the mean and standard deviation extracted from the above file.
Rows = 10,299  Columns = 81


#- "summarized_Mean_By_Activity_and_Subject.txt"


This file stores tidy summary data of the means from the above file.
Grouped by Activity and the Subject [also refered to as the Volunteer]
Rows = 180  Columns =81

Any questions may be refered to giyoh@programmer.net
