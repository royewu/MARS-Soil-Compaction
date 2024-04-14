# Using the Multivariate Adaptive Regressive Splines (MARS) model to predict Soil Compaction Parameters

The accurate measure of soil compaction parameters is important due to their relevance of ensuring proper foundations of large infrastructure projects to maintain structural integrity, along with many more factors. Current industry standard field tests for measuring soil compaction parameters are very costly in money, time, and other resources. Therefore, due to this, and the need for fast and accurate approximations of soil compaction parameters for all sorts of geotechnical implementations, the utilization of machine learning models is a method that many are turning towards as a cost-effective substitute.

## Overview
This project utilitzes the Multiadaptive Adaptive Regressive Splines (MARS) algorithm in R to predict optimal water content and maximum dry density based on soil compaction parameters. Using K-fold cross validation to fit the MARS model, RMSE and R2 metrics are calculated to test the model's accuracy. 

## Running the Program

Make sure the dplyr, earth, and caret packages in R are installed, and that the soil_data.csv file is in correct directory. Then the file will run as intended and use the MARS algorithm usign K-fold cross validation
