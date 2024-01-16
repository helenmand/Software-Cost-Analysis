dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
print(summary(dataset))

png("histogram_effort1.png")
hist(dataset$effort, main = "Histogram of effort", xlab = "effort", ylab = "Frequency")
dev.off()

dataset$ln_effort <- log(dataset$effort)
print(summary(dataset))# Plot a histogram of the ln_effort variable

png("histogram_ln_effort1.png")
hist(dataset$ln_effort, main = "Histogram of ln_effort", xlab = "ln_effort", ylab = "Frequency")
dev.off()