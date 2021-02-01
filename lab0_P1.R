#install.packages("MASS")

library(MASS) #load the library MASS
attach(Boston) #attaching the dataset
?Boston #help fuction with "?"
head(Boston) #shows the first 6 rows
dim(Boston) #
names(Boston)
str(Boston)
nrow(Boston)
ncol(Boston)
summary(Boston)
summary(Boston$crim)
