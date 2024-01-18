library(psych)
dataset <- read.csv("data/software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)

# t01, t07, t08, t09, t10, t11, t14, t15
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

anova_result <- aov(log(effort) ~ t01, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)  
#t01          4  10.32  2.5789   2.639 0.0428 *
#Residuals   58  56.67  0.9771                 


# Perform ANOVA
anova_result <- aov(log(effort) ~ t02, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)
#t02          4   4.61   1.153   1.073  0.378
#Residuals   58  62.37   1.075               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t03, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)
#t03          3   5.40   1.800   1.724  0.172
#Residuals   59  61.59   1.044       

# Perform ANOVA
anova_result <- aov(log(effort) ~ t04, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)
#t04          3   0.39  0.1295   0.115  0.951
#Residuals   59  66.60  1.1288 

# Perform ANOVA
anova_result <- aov(log(effort) ~ t05, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value   Pr(>F)    
# t05          4   4.57   1.142   1.061  0.384
#Residuals   58  62.42   1.076               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t06, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value   Pr(>F)    
#t06          3   0.96  0.3193   0.285  0.836
#Residuals   59  66.03  1.1191               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t07, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value   Pr(>F)    
#t07          4  20.97   5.242   6.606 0.000188 *** -> post hoc
#Residuals   58  46.02   0.793 

# Perform ANOVA
anova_result <- aov(log(effort) ~ t08, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

 #           Df Sum Sq Mean Sq F value Pr(>F)  
#t08          3   8.91  2.9692   3.016 0.0369 *
#Residuals   59  58.08  0.9844     


# Perform ANOVA
anova_result <- aov(log(effort) ~ t09, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#           Df Sum Sq Mean Sq F value Pr(>F)  
#t09          3   7.98   2.659   2.658 0.0565 .
#Residuals   59  59.01   1.000               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t10, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value Pr(>F)  
#t10          3  11.49   3.829    4.07 0.0107 *
#Residuals   59  55.50   0.941       

# Perform ANOVA
anova_result <- aov(log(effort) ~ t11, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value Pr(>F)  
#t11          3   9.68   3.227   3.323 0.0257 *
#Residuals   59  57.30   0.971   

# Perform ANOVA
anova_result <- aov(log(effort) ~ t12, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)
#t12          3   4.62   1.541   1.458  0.235
#Residuals   59  62.36   1.057               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t13, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#            Df Sum Sq Mean Sq F value Pr(>F)
#t13          4   0.80  0.2012   0.176   0.95
#Residuals   58  66.18  1.1411               

# Perform ANOVA
anova_result <- aov(log(effort) ~ t14, data = dataset)

# Print the ANOVA table
print(summary(anova_result))

#             Df Sum Sq Mean Sq F value Pr(>F)  
#t14          4  10.87  2.7182    2.81 0.0336 *
#Residuals   58  56.11  0.9675    

# Perform ANOVA
anova_result <- aov(log(effort) ~ t15, data = dataset)

# Print the ANOVA table
print(summary(anova_result))
print(describeBy(dataset$effort, dataset$t15))

#            Df Sum Sq Mean Sq F value Pr(>F)  
#t15          4   8.90   2.226   2.223 0.0776 .
#Residuals   58  58.08   1.001  

# Perform ANOVA
anova_result <- aov(log(effort) ~ app, data = dataset)

# Print the ANOVA table
print(summary(anova_result))
#print(describeBy(dataset$effort, dataset$app))

#            Df Sum Sq Mean Sq F value Pr(>F)
#app          4   7.85   1.963   1.926  0.118
#Residuals   58  59.13   1.020       

# Perform ANOVA
anova_result <- aov(log(effort) ~ har, data = dataset)

# Print the ANOVA table
print(summary(anova_result))
#print(describeBy(dataset$effort, dataset$har))

#            Df Sum Sq Mean Sq F value Pr(>F)  
#har          4  11.12  2.7793   2.885 0.0301 *
#Residuals   58  55.87  0.9633  