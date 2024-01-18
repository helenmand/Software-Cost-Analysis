# Read the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)

# Plot a box plot of the effort variable
png("boxplot_effort1.png")
boxplot(dataset$effort, main = "Box Plot of Effort", ylab = "Effort")
dev.off()

# Create a new variable ln_effort
dataset$ln_effort <- log(dataset$effort)

# Plot a box plot of the ln_effort variable
png("boxplot_ln_effort1.png")
boxplot(dataset$ln_effort, main = "Box Plot of ln_effort", ylab = "ln_effort")
dev.off()


# Convert t01 to a factor variable
dataset$t01 <- factor(dataset$t01, levels = c("very low", "low", "medium", "high", "very high"))


png("boxplot_t01.png")
boxplot(effort ~ t01, data = dataset, main = "Box Plot of t01", ylab = "Effort", xlab = "t01")
dev.off()
