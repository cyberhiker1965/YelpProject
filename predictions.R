# prediction algorithm
set.seed(71)

library(caret)
library(ggplot2)
library(ISLR)

businessdata.sub[] <- lapply(businessdata.sub, factor)

businessdata.sub<- droplevels(subset(businessdata.sub,businessdata.sub$stars != "1"))

inTrain <- createDataPartition(y=businessdata.sub$stars, p=0.60, list=FALSE)

training <- businessdata.sub[inTrain,]
training <- training[complete.cases(training),]


testing <- businessdata.sub[-inTrain,]
testing <- testing[complete.cases(testing),]

#qplot(romantic, intimate,color=stars,data=training) + geom_smooth(method='lm', formula=y~x)

#featurePlot(x=training[,c("romantic","intimate","classy","hipster","divey",
#                          "touristy","trendy","upscale","casual")], 
#            y=training$stars)

rf_model <- train(stars ~ ., data=training, method="rf", allowParallel=TRUE, na.action = na.omit)

confusionMatrix(testing$stars,predict(rf_model,testing))

#print(rf_model)

