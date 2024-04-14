# MARS model code for usage with Soil Compaction

# Package Installation
#install.packages("dpylr")
#install.packages("earth")
#install.packages("caret")

# Call libraries
library(dplyr)   #data wrangling
library(earth)   #fitting MARS models
library(caret)   #tuning model parameters

#data
soil_data <- read.csv("soil_dataset.csv")
#head(soil_data)

#create a tuning grid
hyper_grid <- expand.grid(
  degree = 1:3, 
  nprune = seq(2, 50, length.out = 10) |> floor()
)

#make this example reproducible
set.seed(1)

#fit MARS model using k-fold cross-validation
cv_mars <- train(
  x = subset(soil_data, select = -c(No., References, Type)),
  y = soil_data$Wopt,
  method = "earth",
  metric = "RMSE",
  trControl = trainControl(method = "cv", number = 10),
  tuneGrid = hyper_grid
)

#display model with lowest test RMSE
cv_mars$results %>%
  filter(nprune == cv_mars$bestTune$nprune, degree == cv_mars$bestTune$degree)