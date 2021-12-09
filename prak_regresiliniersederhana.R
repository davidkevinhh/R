library(datasets)
View(cars)

plot(cars$speed,cars$dist)
cor.test(cars$speed,cars$dist)

model_reg = lm(cars$dist ~ cars$speed)
model_reg
summary(model_reg)
