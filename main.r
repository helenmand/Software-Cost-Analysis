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

png("histogram_nlan.png")
hist(dataset$nlan, main = "Histogram of_nlan", xlab = "nlan", ylab = "Frequency")
dev.off()

dataset$ln_nlan <- log(dataset$nlan)
png("histogram_ln_nlan.png")
hist(dataset$ln_nlan, main = "Histogram of ln_nlan", xlab = "ln_nlan", ylab = "Frequency")
dev.off()

png("histogram_size.png")
hist(dataset$size, main = "Histogram of_size", xlab = "size", ylab = "Frequency")
dev.off()

dataset$ln_size <- log(dataset$size)
png("histogram_ln_size.png")
hist(dataset$ln_size, main = "Histogram of ln_size", xlab = "ln_size", ylab = "Frequency")
dev.off()