dataset <- read.csv("./data/software_cost_projects.csv", header = TRUE)

# Q-Q plot of 'size'
qqnorm(dataset$size)
qqline(dataset$size, col = "darkgreen")

png("qqplot_size.png")
dev.off()

# Q-Q plot of 'ln_size'
qqnorm(log(dataset$size))
qqline(log(dataset$size), col = "darkgreen")

png("qqplot_ln_size.png")
dev.off()