library(psych)
library(PMCMRplus)
library(car)

# Load the dataset
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)

dataset$ln_effort <- log(dataset$effort)

#dataset[, sapply(dataset, is.numeric)] <- lapply(dataset[, sapply(dataset, is.numeric)], as.factor)

print("Original dataframe:")
print(dataset$t01)

# Convert each column to factor
df <- data.frame(lapply(dataset, as.factor))
#dataset$t01 <- factor(dataset$t01)
# Display the updated dataframe
print("Dataframe after conversion to factor:")
print(dataset$t01)