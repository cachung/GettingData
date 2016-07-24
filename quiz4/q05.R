#You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded 
#companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times 
#the data was sampled.

## You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times the data was sampled.
library(lubridate)
library(quantmod)
amzn = getSymbols("AMZN", auto.assign=FALSE)
sampleTimes = index(amzn)

sampleTimes = ymd(sampleTimes)
round_date(sampleTimes, "year")

## Subset observations made in 2012
Y2012 <- subset(sampleTimes, year(sampleTimes) == 2012)
a1<-length(Y2012) ## [1] 250
## Find out number of Mondays in this subset
a2<-length(which(wday(Y2012, label = T) == "Mon")) ## [1] 47
#How many values were collected in 2012? How many values were collected on Mondays in 2012?

