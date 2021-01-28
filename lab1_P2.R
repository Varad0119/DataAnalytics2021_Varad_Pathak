#install.packages("ISLR")

library(ISLR)
data("Auto")
head(Auto,10) #gives first 10 rows
tail(Auto,10) #gives last 10 rows
names(Auto)
summary(Auto)
summary(Auto$mpg)
fivenum(Auto$mpg)
boxplot(Auto$mpg)
hist(Auto$mpg)
summary(Auto$horsepower)
summary()

data1<-read.csv(file.choose(), header = T)
