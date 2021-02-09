install.packages("kernlab")
library(caret); library(kernlab);data(spam)
inTrain <- createDataPartition(y=spam$type,p=0.75,list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

set.seed(32343)
modelFit <- train(type~.,data=training, method="glm")
print(modelFit)

print(modelFit$finalModel)

predictions <- predict(modelFit,newdata=testing)

print(predictions)

confusionMatrix(predictions, testing$type)

######

library(caret); library(kernlab);data(spam)
inTrain <- createDataPartition(y=spam$type,p=0.75,list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

set.seed(32323)

### Get the train set

folds <- createFolds(y=spam$type,k=10, list=TRUE,returnTrain = TRUE)
sapply(folds, length)

print(folds[[1]][1:10])

### get the test set
folds <- createFolds(y=spam$type,k=10, list=TRUE,returnTrain = FALSE)
sapply(folds, length)

print(folds[[1]][1:10])

#### Use Sampling 

library(caret); library(kernlab);data(spam)
inTrain <- createDataPartition(y=spam$type,p=0.75,list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

set.seed(32323)


folds <- createResample(y=spam$type,times = 10, list=TRUE)
sapply(folds, length)

print(folds[[1]][1:10])

#### Use Timeslices

library(caret); library(kernlab);data(spam)
set.seed(32323)

tme <- 1:1000
folds <- createTimeSlices(y=tme, initialWindow = 20, horizon = 10)
names(folds)
print(folds$train[[1]])
print(folds$test[[1]])


##### 

library(ISLR); library(ggplot2);library(caret);data(Wage)
summary(Wage)

inTrain <- createDataPartition(y=spam$type,p=0.75,list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

set.seed(32343)
modelFit <- train(type~.,data=training, method="glm")
print(modelFit)

print(modelFit)


