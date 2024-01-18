library(ggplot2)
# Load the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)

dataset$ln_effort <- log(dataset$effort)
#ggplot(dataset, aes(x=nlan, y=ln_effort))+ geom_point()+ labs(x='# langs', y='# effort')

res = cor.test(y=dataset$ln_effort,
         x=log(dataset$nlan),
         method="pearson")

print(res)

res = cor.test(y=dataset$ln_effort,
         x=log(dataset$size),
         method="pearson")

print(res)