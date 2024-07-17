# Software Cost Analysis
This repository contains an analysis of the "software cost projects.csv" dataset, which includes information on various software projects. The primary objective of this project is to investigate the factors that influence the effort required for these projects. 

## Descriptive Statistics:
We performed descriptive statistical analysis on the variables in the dataset. The generated plots can be seen in the folder `plots`.

Our main findings were: 

- **Class Imbalance**: Many qualitative variables in the dataset exhibit significant class imbalance. Certain categories, like 'very low', have notably fewer observations compared to others. To mitigate this issue, categories such as 'very low' were merged with 'low' to balance the dataset.

- **Application Size (size) and Effort Cost**: There is a clear trend suggesting that as the Application Size increases, the cost of effort also tends to increase. 

- **Logical Complexity and Effort Cost**: The Logical Complexity of software systems appears to have a notable impact on the cost of effort. Higher logical complexity generally correlates with increased costs, whereas lower complexity tends to be associated with lower costs.

## Research Questions and Hypothesis Testing:
We formulated research questions to investigate the relationships between variables based on our descriptive analysis findings, then we conducted statistical hypothesis testing to accept or reject these hypotheses.

1. RQ1: Does the level of Software Logical Complexity (t07) affect the population mean values of effort cost in software?
2. RQ2: Does the level of Capability Requirements (t10) influence the population mean values of effort cost in software?
3. RQ3: Do different Computer Platforms (har) influence the population mean values of effort cost in software?
4. RQ4: Does the level of Personnel Skills in Tools (t14) affect the population mean values of effort cost in software?
5. RQ5: Is there a relationship between the cost of effort and the Size (size) of the application?

For RQ1 to RQ4, we compared effort costs across groups using ANOVA to test for significant mean differences after confirming equal variances with Levene's test. Significant differences identified by ANOVA were further analyzed using Tukey's post-hoc test.

For RQ5, we assessed the relationship between effort cost and application size using Pearson correlation coefficient to measure their linear association.

### Model Building:
We aimed on developing and refining a predictive model for effort cost based on our dataset analysis.

We created three models:

- Utilization of All Variables: Initially, a model was created using all available variables in the dataset.

- Statistically Significant Variables: Through rigorous analysis (detailed in earlier sections), we identified variables that significantly influence the effort cost. These variables include Size, t14 (Personnel Skills in Tools), t08 (User Design Constraint), and t11 (End User Efficiency).

- Forward Feature Selection: We employed a forward feature selection process to identify the most influential variables for predicting effort cost. This iterative method identified Size, t14 (low), t08 (very high), and t11 (low) as the key predictors.

## Results

- **Logical Complexity**: Directly influences the effort required, with more complex tasks demanding greater effort.
- **Capability Requirements**: Representing the skills of programmers, significantly impacts effort cost.
- **Programmer Skills in Tools**: Low tool skills increase costs, whereas higher skills decrease them.
- **Project Size**: Strong positive correlation with effort costs, implying higher costs for larger projects.
- **Size**: Size positively correlated with effort, indicating larger applications require more development effort.





