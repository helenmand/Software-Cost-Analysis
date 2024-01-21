library(ggplot2)
# Load the dataset
dataset <- read.csv("data/modified_software_cost_projects.csv", header = TRUE)

dataset$ln_effort <- log(dataset$effort)
#ggplot(dataset, aes(x=nlan, y=ln_effort))+ geom_point()+ labs(x='# langs', y='# effort')

res <- cor.test(y = dataset$ln_effort,
                x = log(dataset$nlan),
                method = "spearman")
print(res)

res <- cor.test(y=dataset$ln_effort,
         x=log(dataset$size),
         method="pearson")
print(res)

#         Spearman's rank correlation rho

#data:  dataset$nlan and dataset$ln_effort
#S = 28882, p-value = 0.01447
#alternative hypothesis: true rho is not equal to 0
#sample estimates:
#      rho 
#0.3067786 

#Pearson's product-moment correlation

#data:  log(dataset$size) and dataset$ln_effort
#t = 9.2942, df = 61, p-value = 2.714e-13
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
# 0.6390277 0.8517764
#sample estimates:
#      cor 
#0.7655795 