setwd("/Users/varadpathak/Desktop/ITWS 6600 Data Analytics/Lab 1")
EPI_data<-read.csv("2010EPI_data.csv")
View(EPI_data)

#For reading Excel files, readxl package can be used
#install.packages("readxl")
colnames(EPI_data)<-EPI_data[1,]
EPI_data<-EPI_data[-1,]
attach(EPI_data)
#fix(EPI_data)  Did not work, gotta figure out why

#tf<-is.na(EPI) Did not work either as the values are not NA, they are ""
#tf<-EPI==""
#E<-EPI[!tf]
#summary(EPI)
#E<-numeric(E)
#E<-as.numeric(E)
#summary(E)
#^ Will not work, will have to turn "" into NA
#test<-EPI
#test<-replace(test, test=="",NA)
EPI<-replace(EPI,EPI=="",NA)
summary(EPI)
EPI<-as.numeric(EPI)
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
