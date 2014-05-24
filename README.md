# Tidy Data #
=========================================================
Jose Gonzalez
May 2014

=========================================================

The purpose of this project is to collect data and work with it to prepare tidy data that can be used for later analysis.

=========================================================

## Contents ##

This repo contains the following files:
- "README.md"
- "run_analysis.R": Contains the script for performing the analysis.
- "CodeBook.md": A code book that defines all variables that appear in the script and data.

=========================================================

## run_analysis.R ##
This script assumes that all data is in a folder called UCI HAR Dataset which is the current working directory.
Each step in the script is documented in detail within the script but briefly these are the steps followed:
- Read all the data and merge into one data set
- Order data frame by subject (firstly) and then by activity (secondly).
- Replace activity codes in numbers (1-6) for activity names
- Extract columns that are means or standard deviations but avoid Freq.means: I have chosen only those measurements that contained both mean and standard deviation. Hence, I avoided Freq.means.
- Create a second tidy data set containing the average of each variable for each activity for each subject: I used the reshape2 package. This tidy data set has 68 columns and 180 rows.
- Rename columns: I generated a data frame with new names for variables, which are more descriptive (although long). This data frame is in a file called "variables" in the current working directory. The scrip reads these data and used them to rename the columns.
- Finally I save tha data in a file called "TidyData,txt" which I loaded into the Course website.

=========================================================

## CodeBook.md ##
In the code book I have included the names of column variables for measurements but also the names of variables that I have used in the script.