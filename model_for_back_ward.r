library(tidyverse)
library(caret)
library(leaps)
library(MASS)

set.seed(123) 

dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)

intercept_only <- lm(log(effort) ~ 1, data = dataset)

all_pred <- lm(log(effort) ~ log(size) + t01 + t07 
              + t08 + t10 + t11 + t14 
              + har, data = dataset)

forward <- step(intercept_only, direction = "forward",
                scope = formula(all_pred),
                trace = 0)  

print((forward$anova))

backward <- step(all_pred, direction = "backward", trace=0)

print((backward$anova))

model <- lm(log(effort) ~ log(size)
                + t14 + t08 + t11,
                data = dataset)

print(summary(model))
#print(plot(model,1))
#print(plot(model,2))
#print(plot(model,3))

trainIndex <- createDataPartition(dataset$effort, p = .7,
                                    list = FALSE, times = 1)

train <- dataset[trainIndex, ]
test <- dataset[-trainIndex, ]

model_training <- lm(log(effort) ~ log(size) + t14 + t08 + t11,
                data = train)

# Predicted values for Test Set
predicted <- exp(predict (model_training, test))
actual <- test$effort
Error.vector <- actual - predicted
AE.vector <- abs(actual - predicted)
MRE.vector <- (abs(actual - predicted))/actual
MER.vector <- (abs (actual - predicted))/predicted

print(list(ME = mean(Error.vector),
Mde = median(Error.vector),
MAE = mean(AE.vector),
MdAE = median(AE.vector),
MMRE = mean(MRE.vector),
MdMRE = median(MRE.vector),
MMER = mean(MER.vector),
MdMER = median(MER.vector)))

model_1 <- lm(log(effort) ~ log(size) + t01 + t07 
              + t08 + t10 + t11 + t14 
              + har, data = dataset)

print(anova(model_1, model))

"
# forward
         Step Df  Deviance Resid. Df Resid. Dev        AIC1
1             NA        NA        62   66.98661   5.865551
2 + log(size) -1 39.261654        61   27.72495 -47.710522
3       + t14 -2  6.437064        59   21.28789 -60.354779
4       + t08 -3  3.658841        56   17.62905 -66.235969
5       + t11 -3  2.174757        53   15.45429 -68.530630

# backward
   Step Df  Deviance Resid. Df Resid. Dev       AIC
1       NA        NA        42   12.03736 -62.27254
2 - t07  2 0.1889887        44   12.22635 -65.29111
3 - har  4 1.4377447        48   13.66409 -66.28689
4 - t01  2 0.5491338        50   14.21323 -67.80459
5 - t10  3 1.2410636        53   15.45429 -68.53063
"