library(psych)
dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)
dataset$ln_effort <- log(dataset$effort)

# t01, t07, t08, t09, t10, t11, t14, t15
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

anova_result <- aov(log(effort) ~ t01, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t02, data = dataset)
print(summary(anova_result))        

anova_result <- aov(log(effort) ~ t03, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t04, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t05, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t06, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t07, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t08, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t09, data = dataset)
print(summary(anova_result))    

anova_result <- aov(log(effort) ~ t10, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t11, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t12, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t13, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ t14, data = dataset)
print(summary(anova_result)) 

anova_result <- aov(log(effort) ~ t15, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ app, data = dataset)
print(summary(anova_result))

anova_result <- aov(log(effort) ~ har, data = dataset)
print(summary(anova_result))

"
            Df Sum Sq Mean Sq F value Pr(>F)  
t01          2   8.21   4.106   4.191 0.0198 *
Residuals   60  58.77   0.980                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)
t02          2   1.48  0.7384   0.676  0.512
Residuals   60  65.51  1.0918               
            Df Sum Sq Mean Sq F value Pr(>F)  
t03          2   5.29   2.647   2.575 0.0846 .
Residuals   60  61.69   1.028                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)
t04          2   0.01   0.003   0.003  0.997
Residuals   60  66.98   1.116               
            Df Sum Sq Mean Sq F value Pr(>F)
t05          2   3.49   1.743   1.647  0.201
Residuals   60  63.50   1.058               
            Df Sum Sq Mean Sq F value Pr(>F)
t06          2   0.15  0.0772   0.069  0.933
Residuals   60  66.83  1.1139               
            Df Sum Sq Mean Sq F value   Pr(>F)    
t07          2  19.66   9.831   12.46 2.97e-05 ***
Residuals   60  47.33   0.789                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)  
t08          3   8.91  2.9692   3.016 0.0369 *
Residuals   59  58.08  0.9844                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)  
t09          3   7.98   2.659   2.658 0.0565 .
Residuals   59  59.01   1.000                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)  
t10          3  11.49   3.829    4.07 0.0107 *
Residuals   59  55.50   0.941                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)  
t11          3   9.68   3.227   3.323 0.0257 *
Residuals   59  57.30   0.971                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)
t12          3   4.62   1.541   1.458  0.235
Residuals   59  62.36   1.057               
            Df Sum Sq Mean Sq F value Pr(>F)
t13          2   0.38  0.1904   0.171  0.843
Residuals   60  66.61  1.1101               
            Df Sum Sq Mean Sq F value  Pr(>F)   
t14          2  10.26   5.129   5.424 0.00683 **
Residuals   60  56.73   0.945                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)  
t15          2   7.69   3.844   3.889 0.0258 *
Residuals   60  59.30   0.988                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
            Df Sum Sq Mean Sq F value Pr(>F)
app          4   7.85   1.963   1.926  0.118
Residuals   58  59.13   1.020               
            Df Sum Sq Mean Sq F value Pr(>F)  
har          4  11.12  2.7793   2.885 0.0301 *
Residuals   58  55.87  0.9633                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
"