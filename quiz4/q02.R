#Load the Gross Domestic Product data for the 190 ranked countries 
#in this data set:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
#
#Remove the commas from the GDP numbers in millions of dollars and 
#average them. What is the average?
#
#Original data sources:
#    
#    http://data.worldbank.org/data-catalog/GDP-ranking-table

library(data.table)
URLF <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(URLF,dest="FGDP.csv")

GDP <- data.table(read.csv("FGDP.csv", skip = 4, nrows = 191))
GDP <- GDP[, list(X, X.1, X.3, X.4)]
setnames(GDP, c("X", "X.1", "X.3", "X.4"), c("CountryCode", "rankingGDP", "countryNames", "GDP"))
columnagdp <- as.numeric(gsub(",", "", GDP$GDP))
mean(columnagdp, na.rm = TRUE)


# In the data set from Question 2 what is a regular expression that 
# would allow you to count the number of countries whose name begins 
# with "United"? Assume that the variable with the country names in 
# it is named countryNames. How many countries begin with United? 

isUnited <- grepl("^United", GDP$countryNames)
summary(isUnited)