# UCI Har Dataset Preprocessing

Pre-process a dataset provided by UCI with a prescribed set of guidelines in partial fulfillment of certification for Coursera Course - Getting And Cleaning Data by Johns Hopkins University. This repository consists of following documents.

* **ReadMe.md** - It contains general information about the components of this repository.

* **Tidy_data.txt** - It contains the same data submitted to coursera in text format for reader's ready reference.

* **Tidy_data.csv** - It contains the same data submitted to coursera in csv format for having an intuitive feel for the dataset.

* **CodeBook.md** - It contains information about the different activities/transformations performed and the features/variables included in the final Tidy_data.txt & Tidy_data.csv files

* **run_analysis.R** - R file to get the tidy dataset from raw dataset

## run_analysis.R
The text below describes the sequence of actions performed on the provided raw dataset in order to obtain the final Tidy_data.txt file
1. Read the following files into R
* activity_labels.txt
* subject_train.txt
* subject_test.txt
* X_test.txt
* y_test.txt
* X_train.txt
* y_train.txt

2. Subject test and subject train data contains information about the person on whom the data analysis was performed. Every person is assigned an integer based on the chronology of the tests performed. There are in all 30 subjects. Merge these either with y_test & y_train or X_test & X_train respectively so that we'll come to know the person corresponding to the record of feature values in test and training data respectively.


3. Row bid the Train and Test Sets together and create a consolidated X and y dataframe respectively.  

4. Use grep() to find and subset the values from the dataset which contain descriptive stats i.e. mean and standard deviation respectively. At the end of this step, merge both X and y sets together to form a unified dataframe containing all aspects of the data.  

5. Use sapply to create a column/feature which describes the acivity in literal terms instead of just a number which isn't intuitive to understand.  

6. Give comprehensive names to all the features in the dataset. 
* The prefix t in different observations stands for data collected which is wrt time i.e. in Time Domain
* Similarly, the prefix f stands for observations converted to frequency domain by applying FFT on Time Domain observations
* Mag stands for Magnitude which is accordingly replaced.
* Freq stands for Frequency Domain which is also replaced similarly.

7. Once we have all this done, eventually summarise the data using pipe operator and other functions in dplyr package to create the tidy data which is also included in this repository.






