# Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

# Ranking, Economy, Dollars
#
# Load the educational data from this data set:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv
#
# Match the data based on the country shortcode. How many of the IDs match? 
# Sort the data frame in descending order by GDP rank (so United States is last). 
# What is the 13th country in the resulting data frame?
#
#Original data sources:
#    
# http://data.worldbank.org/data-catalog/GDP-ranking-table
# http://data.worldbank.org/data-catalog/ed-stats
library(data.table)
URL1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(URL1,destfile="getdata_FGDP.csv")
FGDP <- fread("getdata_FGDP.csv", skip=4, nrows=190, select=c(1,2,4,5), col.names=c("CountryCode", "Rank", "Economy", "Total"))

URL2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(URL2, destfile="EDSTATS_Country.csv")
EDSTAT <- fread("EDSTATS_Country.csv")

mergedata <- merge(FGDP, EDSTAT, by = 'CountryCode')
nrow(mergedata)