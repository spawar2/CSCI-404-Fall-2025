# Author: Pawar; Date: 09/23/2025; Purpose: Test decision trees in R

install.packages("rpart")

# Load the library
library(rpart)

# Load some dummy dataset
kyphosis <- kyphosis

# Create a decision tree
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data= kyphosis)

# Plot the results
plot(fit, main="Classification plot for Kyphosis", uniform=TRUE) text(fit, use.n=TRUE, all=TRUE, cex=.8)

# Data mining: Tree based models, recursive partitioning is very basic
tool for 2 predicting outcomes: classification tress and regression
trees.
# Classification and Regression trees: Breiman, Olshen.
# 3 : 1) Growing the tree (Classification or regression)
2) Examine the results of your model
3) Prune the tree.
# library(rpart)
# Growing the tree: prediction where does Age, Number and Start has any
relation with kyphosis
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=
kyphosis)
# Display the results in variable fit
printcp(fit)
plotcp(fit)
summary(fit)
# Ploting the tree result
plot(fit, main="Classification plot for Kyphosis", uniform=TRUE)
text(fit, use.n=TRUE, all=TRUE, cex=.8)
post(fit, file="/Users/yalegenomecenter/Desktop/sample.ps",
title="Classification Example")
# Pruning the tree: Performed to avoid the overfitting of data, reduce
the cross-validation error.
pfit <- prune(fit, cp=fit$cptable[which.min(fit$cptable[,"xerror"]),
"CP"])
# Plotting the results
plot(pfit, main="Pruning classification plot for Kyphosis", uniform=TRUE)
text(pfit, use.n=TRUE, all=TRUE, cex=.8)
