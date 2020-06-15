# Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project
This repo was created to finish the assignment for week 4 of Getting and Cleaning Data Coursera course.

> First, download and unzip the data file into your R working directory.
> Second, download the R source code into your R working directory.
> Finally, execute R source code to generate tidy data file.

========================================================================================================================================
The Repository contains the following files:

# 1. README.md

2.run_analysis.R
-----------------------------
This file contains the R script which was used to make the Tidy dataset. 
We first start by loading the dataset and then importing all the datasets into R.
The datasets are allocated appropriate activity labels and feature names.
All the datasets are then merged to create a single dataset.
The features containing on mean and standard deviation are extracted. 
Finally, the final dataset is created by grouping observations based on Activity and Subject in that order and calculating mean of each variable for each activity and each subject.

3.CodeBook.md
----------------
This is the codebook of the Tidy dataset which describes its contents.

=======================================================================================================================================
# TIDY DATASET
The Tidy dataset contains 180 observations (rows) of 68 variables (columns). It is the subset of "Human Activity Recognition Using Smartphones" Dataset. 

