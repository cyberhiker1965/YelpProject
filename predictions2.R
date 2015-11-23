
train_control <- trainControl(method="repeatedcv", number=10, repeats=3)

nb_model2 <- train(stars~., method="nb",data=training, trControl=train_control)
confusionMatrix(testing$stars, predict(nb_model2,testing))

rf_model2 <- train(stars~., method="rf",data=training, trControl=train_control)
confusionMatrix(testing$stars,predict(rf_model2,testing))

rf_model2 <- train(stars~., method="rf",data=businessdata.sub, trControl=train_control)
confusionMatrix(testing$stars,predict(rf_model2,testing))
