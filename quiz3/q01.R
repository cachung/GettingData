# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
#
# and load the data into R. The code book, describing the variable names is here:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE.
#
# which(agricultureLogical) 

#URLF <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
#download.file(URLF,dest="getdata%2Fdata%2Fss06hid.csv")

#CodeBook <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
#download.file(CodeBook, "DataDict06.pdf")

acs <- read.csv("getdata%2Fdata%2Fss06hid.csv", header=T, sep=",")
agricultureLogical <- acs$ACR==3 & acs$AGS==6
head(which(agricultureLogical),3)