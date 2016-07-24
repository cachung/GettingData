#Using the jpeg package read in the following picture of your instructor into R
#
#https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg
#
#Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? 
#(some Linux systems may produce an answer 638 different for the 30th quantile)

library(jpeg)
urllink <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
myfile <-"getdata_jeff.jpg"
download.file(urllink, myfile, mode = 'wb', method = 'curl')
datafile <- readJPEG(myfile, native=TRUE)
quantile(datafile, probs=c(0.3,0.8))
