# Read the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)

# Scatter plot of 'effort' against 'size'
plot(log(dataset$nlan), log(dataset$effort), main = "Scatter Plot: Effort vs nlan", 
     xlab = "Size", ylab = "Effort", col = "blue", pch = 16)

# Save the plot to a PNG file
png("scatter_plot_effort_size.png")
dev.off()
