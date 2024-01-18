


#setwd("working_directory_path") set working directory path.



# Specify the levels for the factor variable
factor_levels <- c("very low", "low", "medium", "high", "very high")

# Iterate over the variables t01 to t15
for (i in 1:15) {
  column_name <- paste0("t", sprintf("%02d", i))  # Create the column name, e.g., t01, t02, ..., t15
  software_cost_projects[[column_name]] <- factor(software_cost_projects[[column_name]], levels = factor_levels)
}

# Iterate over the variables t01 to t15
for (i in 1:15) {
  column_name <- paste0("t", sprintf("%02d", i))  # Create the column name, e.g., t01, t02, ..., t15
  
  # Create a PNG file for each variable
  png(paste0("boxplot_", column_name, ".png"))
  
  # Create a boxplot for the current variable
  boxplot(effort ~ get(column_name), data = software_cost_projects, 
          main = paste("Box Plot of", column_name), 
          ylab = "Effort", xlab = column_name)
  
  # Close the PNG file
  dev.off()
}

# Convert the "app" column to a factor variable with specified levels
factor_levels <- c("InfServ", "TransPro", "CustServ", "ProdCont", "MIS")
software_cost_projects$app <- factor(software_cost_projects$app, levels = factor_levels)

# Create a boxplot for the "app" column
png("boxplot_app.png")
boxplot(effort ~ app, data = software_cost_projects, 
        main = "Box Plot of app", 
        ylab = "Effort", xlab = "App")
dev.off()

# Convert the "har" column to a factor variable with specified levels
factor_levels_har <- c("PC", "Mainfrm", "Multi", "Mini", "Network")
software_cost_projects$har <- factor(software_cost_projects$har, levels = factor_levels_har)

# Create a boxplot for the "har" column
png("boxplot_har.png")
boxplot(effort ~ har, data = software_cost_projects, 
        main = "Box Plot of har", 
        ylab = "Effort", xlab = "Har")
dev.off()

