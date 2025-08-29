getwd()
setwd("C:\\Users\\IT24103040\\Desktop\\IT24103040")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = "\t")
fix(Delivery_Times)
names(Delivery_Times)<-c("X1")
attach(Delivery_Times)
#2
histogram<-hist(X1,main="Histogram for Delivery Times",xlab = "Delivery Time (minutes)",breaks = seq(20,70,length=10), right=FALSE)

#3 - The histogram shows a roughly symmetric distribution of Delivery times, with the heighest frequency in the 35 -40 minute interval. There is no significant skewness and the frequencies taper off gradually at both ends, indicating a balanced spread of delivery durations.

#4
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
cum.Freq <- cumsum(freq)
new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.Freq[i-1]
  }
}
plot(breaks, new, type = "l", 
     main="Cumulative Frequency Polygon (Ogive) for Delivery Times", 
     xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", ylim = c(0,max(cum.Freq)))
cbind(Upper = breaks, CumFreq = new)

