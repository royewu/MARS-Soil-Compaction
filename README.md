# Soil Compaction Parameter Prediction Using MARS Model

This project leverages a modified **Multivariate Adaptive Regression Splines (MARS)** model to predict soil compaction parameters, providing insights into improving the model's performance through hyperparameter optimization. The work focuses on comparing the modified model's performance metrics, such as R² and RMSE, to the original MARS implementation.

## What is the MARS Model?

The **Multivariate Adaptive Regression Splines (MARS)** model is a non-parametric regression technique that extends linear regression to handle both linear and non-linear relationships in data. 

- **Key Features**:
  - MARS searches for "knots" or points where the relationship between variables changes.
  - It builds separate linear regressions for these segments (splines) and combines them for the final model.
  - This flexibility makes MARS effective for modeling complex, non-linear datasets.

- **Advantages**:
  - Automatically selects relevant variables and interactions.
  - Handles a mix of continuous and categorical predictors.
  - Performs well on datasets with non-linear dependencies.

In the context of this project, the MARS model is used to predict critical soil compaction parameters, such as **optimum moisture content (OMC)** and **maximum dry density (MDD)**, which are essential for ensuring structural stability in civil engineering projects.

## Research Question

How do the R² and RMSE values of a modified MARS model compare to those of the original MARS model, and how can they be improved?

## Approach

1. **Model Modification**:
   - Modified the MARS model code to optimize its performance.
   - Adjusted hyperparameters like K-value, degree, and N-prune.

2. **Programming Environment**:
   - Implemented using **R** for its rich library ecosystem.

3. **Libraries and Packages**:
   - **dplyr**: For data wrangling.
   - **earth**: To fit the MARS model.
   - **caret**: For hyperparameter tuning and performance evaluation.

4. **Optimization Techniques**:
   - Employed K-fold cross-validation with a tuning grid for model optimization.
   - Evaluated performance metrics to identify the most optimized model variations.

## Methodology

1. **Hyperparameter Tuning**:
   - **K-value**: Increased to better fit the model for a small dataset.
   - **Degree**: Adjusted to enhance the model's ability to handle non-linear relationships.
   - **N-prune**: Fine-tuned to improve overall model performance.

2. **Performance Evaluation**:
   - Metrics such as R² and RMSE were used to assess the accuracy and reliability of the model.

## Findings

- Optimization of parameters such as K-value, degree, and N-prune highlighted areas for improving the model.
- However, RMSE and R² values showed minimal improvements, suggesting the need for further experimentation.

## Challenges

- The modifications did not yield significant improvements in predictive accuracy.
- Limited dataset size may have impacted the model's optimization and evaluation.

## Future Work

- Explore alternative methods such as **Multi-Expression Programming (MEP)** and **Artificial Neural Networks (ANNs)** for better performance metrics.
- Expand the dataset to facilitate more robust testing and optimization.

## Technologies Used

- **R Programming**: Main implementation language.
- **Key Libraries**: `dplyr`, `earth`, `caret`.


## Running the Program

Make sure the dplyr, earth, and caret packages in R are installed, and that the soil_data.csv file is in correct directory. Then the file will run as intended and use the MARS algorithm using K-fold cross validation


---
