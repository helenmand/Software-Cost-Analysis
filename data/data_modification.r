library(dplyr)

# Read the dataset
dataset <- read.csv("software_cost_projects.csv", header = TRUE)

# t01
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t01 = ifelse(t01 %in% c("very high", "high"), "high", t01))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t01 = ifelse(t01 %in% c("very low", "low"), "low", t01))

# t02
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t02 = ifelse(t02 %in% c("very high", "high"), "high", t02))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t02 = ifelse(t02 %in% c("very low", "low"), "low", t02))

# t03
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t03 = ifelse(t03 %in% c("very high", "high"), "high", t03))

# t04
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t04 = ifelse(t04 %in% c("very high", "high"), "high", t04))

# t05
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t05 = ifelse(t05 %in% c("very high", "high"), "high", t05))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t05 = ifelse(t05 %in% c("very low", "low"), "low", t05))

# t06
# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t06 = ifelse(t06 %in% c("very low", "low"), "low", t06))

# t07
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t07 = ifelse(t07 %in% c("very high", "high"), "high", t07))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t07 = ifelse(t07 %in% c("very low", "low"), "low", t07))

# t13
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t13 = ifelse(t13 %in% c("very high", "high"), "high", t13))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t13 = ifelse(t13 %in% c("very low", "low"), "low", t13))

# t14
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t14 = ifelse(t14 %in% c("very high", "high"), "high", t14))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t14 = ifelse(t14 %in% c("very low", "low"), "low", t14))

# t15
# Merge "very high" and "high"
dataset <- dataset %>%
  mutate(t15 = ifelse(t15 %in% c("very high", "high"), "high", t15))

# Merge "very low" and "low"
dataset <- dataset %>%
  mutate(t15 = ifelse(t15 %in% c("very low", "low"), "low", t15))

# Save the modified dataset to a new CSV file
write.csv(dataset, "modified_software_cost_projects.csv", row.names = FALSE)