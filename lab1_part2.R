setwd("/Users/varadpathak/Desktop/ITWS 6600 Data Analytics/Lab 1")
EPI_data<-read.csv("2010EPI_data.csv")
View(EPI_data)

#For reading Excel files, readxl package can be used
#install.packages("readxl")
colnames(EPI_data)<-EPI_data[1,]
