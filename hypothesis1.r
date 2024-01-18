library(psych)
library(PMCMRplus)
#install.packages("car", dependencies=TRUE)
library(car)

# Load the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)
dataset$t01 <- factor(dataset$t01)
#print(table(dataset$t01))

res = leveneTest(ln_effort ~ t01,
            center=mean,
            data=dataset)

print(res)
# check for missing values
#missing_values <- is.na(dataset)
#print(colSums(missing_values))

#print(describeBy(dataset$ln_effort, dataset$t15))

# t01, t07, t08, t09, t10, t11, t14, t15
#anova_result <- aov((ln_effort) ~ t01, data = dataset)

#dunnettT3Test(anova_result)