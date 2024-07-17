#dataset <- read.csv("/home/dimitris/Downloads/software_cost_projects.csv", header = TRUE)
dataset <- read.csv("./data/modified_software_cost_projects.csv", header = TRUE)
dataset$effort <- log(dataset$effort)
dataset$size <- log(dataset$size)

dataset$t01 <- factor(dataset$t01, levels = c("low", "medium", "high"))
dataset$t02 <- factor(dataset$t02, levels = c("low", "medium", "high"))
dataset$t03 <- factor(dataset$t03, levels = c("low", "medium", "high"))
dataset$t04 <- factor(dataset$t04, levels = c("low", "medium", "high"))
dataset$t05 <- factor(dataset$t05, levels = c("low", "medium", "high"))
dataset$t06 <- factor(dataset$t06, levels = c("low", "medium", "high"))
dataset$t07 <- factor(dataset$t07, levels = c("low", "medium", "high"))
dataset$t08 <- factor(dataset$t08, levels = c("low", "medium", "high", "very high"))
dataset$t09 <- factor(dataset$t09, levels = c("low", "medium", "high", "very high"))
dataset$t10 <- factor(dataset$t10, levels = c("low", "medium", "high", "very high"))
dataset$t11 <- factor(dataset$t11, levels = c("low", "medium", "high", "very high"))
dataset$t12 <- factor(dataset$t12, levels = c("low", "medium", "high", "very high"))
dataset$t13 <- factor(dataset$t13, levels = c("low", "medium", "high"))
dataset$t14 <- factor(dataset$t14, levels = c("low", "medium", "high"))
dataset$t15 <- factor(dataset$t15, levels = c("low", "medium", "high"))
dataset$har <- factor(dataset$har, levels = c("PC", "Mainfrm", "Multi", "Mini", "Network"))

# Models with 1 independent variable
# size : explains 0.6958 of the model, better than null model
# Το size 
# t07  : explains 0.1818 of the model, better than null model
# t11  : explains 0.1637 of the model, better than null model
model_t <- lm(effort ~ size, data = dataset)
#print(summary(model_t))

model_t <- lm(effort ~ t07, data = dataset)
#print(summary(model_t))

model_t <- lm(effort ~ t11, data = dataset)
#print(summary(model_t))

model_t <- lm(effort ~ t14, data = dataset)
#print(summary(model_t))

model_1 <- lm(effort ~ size + t01 + t07 
              + t08 + t10 + t11 + t14 
              + har, data = dataset)
# Model 1 explains 82.75% of the variability in the dependent variable (log(effort)).
#The model also significantly improves predictive ability compared to the worst model (p-value: 1.869e-07 < 0.05).
#Variable "size" (𝑏1 = 0.67412) indicates that a one-unit increase in the independent variable log(size)
#will result in a 0.67412-unit increase in the dependent variable log(effort).

# Display a summary of the regression results
print(summary(model_1))

model_2 <- lm(effort ~ t01 + t07 + t08 + t10 + har, data = dataset)

# Display a summary of the regression results
#print(summary(model_2))

model_3 <- lm(effort ~ size + t01 + t02 + t03 
              + t04 + t05 + t06 + t07 + t08 
              + t09 + t10 + t11 + t12 + t13 
              + t14 + t15 + app + har + nlan, data = dataset)


# Display a summary of the regression results
print(summary(model_3))


print(anova(model_3, model_1))
print(anova(model_2, model_1))
#Model_1 has a Residual Sum of Squares (RSS) of 11.554 (A model with a smaller RSS indicates a better fit).
#Model_2 has an RSS of 30.433. 
#The p-value is 9.395e-06 <= 0.05 which indicates that the fit of Model_1 is statistically significantly different from that of Model_2.
