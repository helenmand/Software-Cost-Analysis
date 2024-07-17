library(psych)
library(PMCMRplus)
library(car)

# Load the dataset
dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)
dataset$t01 <- factor(dataset$t01, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t07 <- factor(dataset$t07, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t08 <- factor(dataset$t08, levels = c("low", "medium", "high", "very high"))
dataset$t10 <- factor(dataset$t10, levels = c("low", "medium", "high", "very high"))
dataset$t11 <- factor(dataset$t11, levels = c("low", "medium", "high", "very high"))
dataset$t14 <- factor(dataset$t14, levels = c("very low", "low", "medium", "high", "very high"))
dataset$har <- factor(dataset$har, levels = c("PC", "Mainfrm", "Multi", "Mini", "Network"))

res = leveneTest(ln_effort ~ t01,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ t07,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ t08,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ t10,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ t11,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ t14,
            center=mean,
            data=dataset)
print(res)

res = leveneTest(ln_effort ~ har,
            center=mean,
            data=dataset)
print(res)

#t01 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  4  0.6871 0.6038
#      58               
#t07 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  4  1.1499 0.3424
#      58               
#t08 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  3  1.1664 0.3302
#      59               
#t10 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  3  1.9723 0.1279
#      59               
#t11 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  3  0.6581 0.5811
#      59               
#t14 - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  4   1.062 0.3836
#      58               
#har - Levene's Test for Homogeneity of Variance (center = mean)
#      Df F value Pr(>F)
#group  4  1.5734 0.1935
#      58  
"
t01 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  2  0.5631 0.5724
      60               
t07 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  2  0.7746 0.4654
      60               
t08 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  3  1.1664 0.3302
      59               
t10 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  3  1.9723 0.1279
      59               
t11 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  3  0.6581 0.5811
      59               
t14 - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  2  1.2506 0.2937
      60               
har - Levene's Test for Homogeneity of Variance (center = mean)
      Df F value Pr(>F)
group  4  1.5734 0.1935
"