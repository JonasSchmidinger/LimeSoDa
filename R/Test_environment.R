#
#
# library(LimeSoDa)
# BB.250_dataset_predict.SOC <- BB.250$Dataset[-c(2:3)] # In this example, only SOC is predicted. Hence, Clay_target and pH_target
#
# predicted_values <- c() # Store predicted values in this vector
# testing_values <- c() # Store testinging fold values in this vector
#
# for (i in 1:10){
#   training_data <- BB.250_dataset_predict.SOC[BB.250$Folds != i,] # Exclude testing fold from training data
#   testing_data <- BB.250_dataset_predict.SOC[BB.250$Folds == i,] # Define testing fold as testing data
#
#   MLR_model <- lm("SOM_target ~ .", data = training_data) # Fit MLR to predict SOC
#   MLR_model_predictions <- predict(MLR_model, testing_data) # Predict values of testing fold
#
#   predicted_values <- c(predicted_values, MLR_model_predictions) # Store predicted values for testing fold
#   testing_values <- c(testing_values, testing_data$SOM_target) # Store real observed values from testing fold
# }
#
# # R2
# 1 - sum((predicted_values - testing_values)^2) / sum((testing_values - mean(testing_values))^2)
# # RMSE
# sqrt(mean((predicted_values - testing_values)^2))
#
#
#
#
#
#
#
#
#
#
#
# BB.250$Dataset
#
# BB.250_dataset_predict.SOC <- BB.250$Dataset[-c(2:3)] # In this example, only SOC is predicted. Hence, Clay_target and pH_target
#
# predicted_values <- c() # Store predicted values in this vector
# testing_values <- c() # Store testinging fold values in this vector
#
# for (i in 1:10){
#   training_data <- BB.250_dataset_predict.SOC[BB.250$Folds != i,]
#   testing_data <- BB.250_dataset_predict.SOC[BB.250$Folds == i,]
#
#   MLR_model <- lm("SOM_target ~ .", data = training_data)
#   MLR_model_predictions <- predict(MLR_model, testing_data)
#
#   predicted_values <- c(predicted_values, MLR_model_predictions)
#   testing_values <- c(testing_values, testing_data$SOM_target)
# }
#
# # R2
# 1 - sum((predicted_values - testing_values)^2) / sum((testing_values - mean(testing_values))^2)
# # RMSE
# sqrt(mean((predicted_values - testing_values)^2))
#
#
# ggplot()
