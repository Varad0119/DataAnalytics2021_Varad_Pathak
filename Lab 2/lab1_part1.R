days<- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun')
temp<-c(28, 30.5 ,32, 31.2,29.3, 27.9, 26.4 ) #Temp in F during the week
snowed<-c('T', 'T', 'F','F', 'T', 'T', 'F')#days that it snowed
?data.frame
RPI_Weather_week<-data.frame(days, temp, snowed) #creating the data frame


RPI_Weather_week
head(RPI_Weather_week)

str(RPI_Weather_week)

summary(RPI_Weather_week)

RPI_Weather_week[1,] #showing 1st row and all columns
RPI_Weather_week[,1] #showing all row and 1st columns

RPI_Weather_week[,'snowed']
RPI_Weather_week[,'days']
RPI_Weather_week[,'temp']
RPI_Weather_week[1:5,c('days','temp')]
RPI_Weather_week$temp
subset(RPI_Weather_week,subset=snowed==TRUE)

sorted.snowed<-order(RPI_Weather_week['snowed'])
sorted.snowed
RPI_Weather_week[sorted.snowed,]

dec.snow <- order(-RPI_Weather_week$temp)
dec.snow


empty.dataframe <- data.frame()
v1 <- 1:10
v1

v2<-letters[1:10]
df<-data.frame(col.name.1=v1, col.name.2 =v2)
write.csv(df,file='df.csv')
df2<-read.csv('df.csv')
df2
