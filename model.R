dataset <- read.csv("/home/dimitris/Downloads/software_cost_projects.csv", header = TRUE)
dataset$effort <- log(dataset$effort)
dataset$size <- log(dataset$size)
dataset$t01 <- factor(dataset$t01, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t02 <- factor(dataset$t02, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t03 <- factor(dataset$t03, levels = c("low", "medium", "high", "very high"))
dataset$t04 <- factor(dataset$t04, levels = c("low", "medium", "high", "very high"))
dataset$t05 <- factor(dataset$t05, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t06 <- factor(dataset$t06, levels = c("very low", "low", "medium", "high"))
dataset$t07 <- factor(dataset$t07, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t08 <- factor(dataset$t08, levels = c("low", "medium", "high", "very high"))
dataset$t09 <- factor(dataset$t09, levels = c("low", "medium", "high", "very high"))
dataset$t10 <- factor(dataset$t10, levels = c("low", "medium", "high", "very high"))
dataset$t11 <- factor(dataset$t11, levels = c("low", "medium", "high", "very high"))
dataset$t12 <- factor(dataset$t12, levels = c("low", "medium", "high", "very high"))
dataset$t13 <- factor(dataset$t13, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t14 <- factor(dataset$t14, levels = c("very low", "low", "medium", "high", "very high"))
dataset$t15 <- factor(dataset$t15, levels = c("very low", "low", "medium", "high", "very high"))
dataset$har <- factor(dataset$har, levels = c("PC", "Mainfrm", "Multi", "Mini", "Network"))


model_1 <- lm(effort ~ size + t01 + t07 
              + t08 + t10 + t11 + t14 
              + har, data = dataset)
# Το Μοντέλο 1 εξηγεί το 82.75% της μεταβλητότητας της εξαρτημένης μεταβλητής (log(effort)) 
# Το μοντέλο επίσης βελτιώνει σημαντικά την προβλεπτική ικανότητα σε σχέση με το χείριστο 
# μοντέλο (p-value: 1.869e-07 < 0.05)
# size (𝑏1 = 0.67412) → Αύξηση της ανεξάρτητης μεταβλητής κατά μία μονάδα 
#log(size) θα επιφέρει αύξηση της εξαρτημένης μεταβλητής log(effort) κατά 0.67412 μονάδες

# Display a summary of the regression results
print(summary(model_1))

model_2 <- lm(effort ~ t01 + t07 + t08 + t10 + har, data = dataset)

# Display a summary of the regression results
print(summary(model_2))

model_3 <- lm(effort ~ size + t01 + t02 + t03 
              + t04 + t05 + t06 + t07 + t08 
              + t09 + t10 + t11 + t12 + t13 
              + t14 + t15 + app + har + nlan, data = dataset)


# Display a summary of the regression results
print(summary(model_3))

#Το μοντέλο 3 δεν βελτιώνει την προβλεπτική ικανότητα απο ενα χείριστο μοντέλο (p-value: 0.1925)

# Κάποια μόνα τους.
# size : explains 0.6958 of the model, better than null model
# Το size 
# t07  : explains 0.1818 of the model, better than null model
# t10  : explains 0.121  of the model, p-value: 0.0533 
# t11  : explains 0.1637 of the model, better than null model

anova(model_1, model_2)
# model_1 RSS 11.554 (Μοντέλο με μικρότερο RSS έχει καλύτερη προσαρμογή)
# μοδελ_2 RSS 30.433
# pvalue 9.395e-06 < 0.05 αρα Η προσαρμογή του Μοντέλου 1 παρουσιάζει στατιστικά σημαντική
#διαφορά σε σχέση με την προσαρμογή του Μοντέλου 2.
