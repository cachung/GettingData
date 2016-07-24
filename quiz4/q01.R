#The American Community Survey distributes downloadable data about 
#United States communities. Download the 2006 microdata survey about 
#housing for the state of Idaho using download.file() from here:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
#
#and load the data into R. The code book, describing the variable names is here:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
#
#Apply strsplit() to split all the names of the data frame on the characters "wgtp". 
#What is the value of the 123 element of the resulting list?


#URLF <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
#download.file(URLF,dest="Fss06hid.csv")

#CodeBook <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
#download.file(CodeBook, "DataDict06.pdf")

acs <- read.csv("Fss06hid.csv", header=T, sep=",")
x <- names(acs)
y <- strsplit(x, "wgtp")
y[123]