dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
dataset$effort <- log(dataset$effort)
dataset$size <- log(dataset$size)
dataset$t01 <- factor(dataset$t01, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t07 <- factor(dataset$t07, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t08 <- factor(dataset$t08, levels = c("low", "medium", "high", "very high"))
dataset$t10 <- factor(dataset$t10, levels = c("low", "medium", "high", "very high"))
dataset$t11 <- factor(dataset$t11, levels = c("low", "medium", "high", "very high"))
dataset$t14 <- factor(dataset$t14, levels = c("very low", "low", "medium", "high", "very high"))
dataset$har <- factor(dataset$har, levels = c("PC", "Mainfrm", "Multi", "Mini", "Network"))


model_1 <- lm(effort ~ size + t01 + t07 
            + t08 + t10 + t11 + t14 
            + har, data = dataset)

# Display a summary of the regression results
print(summary(model_1))

model_2 <- lm(effort ~ size + t01 + t02 + t03 
            + t04 + t05 + t06 + t07 + t08 
            + t09 + t10 + t11 + t12 + t13 
            + t14 + t15 + app + har, data = dataset)

# Display a summary of the regression results
print(summary(model_2))