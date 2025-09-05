

getwd()
setwd("C:\\Users\\Hp\\Desktop\\IT24103040")
#01(1)
n <- 50
p <- 0.85
cat("X ~ Binomial(",n,",",p,")")

#01(02)
p1 <- pbinom(46,n,p)
p1

#02(01)
# X = Number of calls received in one hour

#02(02)
lamda <- 12
cat("X ~ Poisson (", lamda,")")

#02(03)
dpois(15,lambda = lamda)


