library(psych)

# Load the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)

print(describeBy(dataset$ln_effort, dataset$t01))