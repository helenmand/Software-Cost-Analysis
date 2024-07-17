# Read the dataset
dataset <- read.csv("./data/modified_software_cost_projects.csv", header = TRUE)

# Scatter plot of 'effort' against 'size'
plot(dataset$nlan, log(dataset$effort), main = "Scatter Plot: ln_effort vs nlan", 
     xlab = "nlan", ylab = "ln_effort", col = "blue", pch = 16)

# Save the plot to a PNG file
png("scatter_plot_effort_size.png")
dev.off()


# Read the dataset
dataset <- read.csv("./data/software_cost_projects.csv", header = TRUE)

# Scatter plot of 'effort' against 'size'
plot(log(dataset$size), log(dataset$effort), main = "Scatter Plot: ln_effort vs ln_size", 
     xlab = "ln_size", ylab = "ln_effort", col = "blue", pch = 16)

# Save the plot to a PNG file
png("scatter_plot_effort_size.png")
dev.off()
