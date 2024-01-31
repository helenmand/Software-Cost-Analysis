# Read the dataset from CSV file
dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)

# Specify the levels for the factor variable
factor_levels <- c("low", "medium", "high")

# Iterate over the variables t01 to t15
for (i in 1:15) {
  column_name <- paste0("t", sprintf("%02d", i))  # Create the column name, e.g., t01, t02, ..., t15
  dataset[[column_name]] <- factor(dataset[[column_name]], levels = factor_levels)
}

# Iterate over the variables t01 to t15
for (i in 1:15) {
  column_name <- paste0("t", sprintf("%02d", i))  # Create the column name, e.g., t01, t02, ..., t15
  
  png(paste0("boxplot_", column_name, ".png"))
  
  boxplot(effort ~ get(column_name), data = dataset, 
          main = paste("Box Plot of", column_name), 
          ylab = "Effort", xlab = column_name)
  
  dev.off()
}

# Convert the "app" column to a factor variable with specified levels
factor_levels_app <- c("InfServ", "TransPro", "CustServ", "ProdCont", "MIS")
dataset$app <- factor(dataset$app, levels = factor_levels_app)

# Create a boxplot for the "app" column
png("boxplot_app.png")
boxplot(effort ~ app, data = dataset, 
        main = "Box Plot of app", 
        ylab = "Effort", xlab = "App")
dev.off()

# Convert the "har" column to a factor variable with specified levels
factor_levels_har <- c("PC", "Mainfrm", "Multi", "Mini", "Network")
dataset$har <- factor(dataset$har, levels = factor_levels_har)

# Create a boxplot for the "har" column
png("boxplot_har.png")
boxplot(effort ~ har, data = dataset, 
        main = "Box Plot of har", 
        ylab = "Effort", xlab = "Har")
dev.off()
