# Read the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)

# Convert t01 to a factor variable
dataset$t01 <- factor(dataset$t01, levels = c("very low", "low", "medium", "high", "very high"))

dataset$size <- log(dataset$size)
png("boxplot_size.png")
boxplot(effort ~ size, data = dataset, main = "Box Plot of size", ylab = "Effort", xlab = "Size")
dev.off()


dataset$nlan <- log(dataset$nlan)
png("boxplot_nlan.png")
boxplot(effort ~ nlan, data = dataset, main = "Box Plot of nlan", ylab = "Effort", xlab = "Nlan")
dev.off()