# Author: Pawar; Date: Aug 28, 2025; Purpose: Test simple linear regression

# Get some dummy dataset
cars <- mtcars

# Scatter plot on training data
scatter.smooth(x=cars$mpg, y=cars$disp, main="SpeedVSdistance")

# Prints the output of variable regression_result
print(regression_result)
# testing our testing data with a built regression model
prediction_result <- predict(regression_result, testing_data)
# accuracy: min_max_accuracy (0-1), Percent_Error
actual_prediction_values <-
data.frame(cbind(actuals=training_data$dist, predicteds=
prediction_result))
min_max_accuracy <- mean(apply(actual_prediction_values, 1, min) /
apply(actual_prediction_values, 1, max))
Percent_Error <- mean(abs((actual_prediction_values$predicteds -
actual_prediction_values$actuals)) / actual_prediction_values$actuals)
