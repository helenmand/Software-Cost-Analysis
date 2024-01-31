dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)

library(tidyverse)
library(caret)
library(leaps)
library(MASS)

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
print(anova(all_pred, model))
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