#Load the Gross Domestic Product data for the 190 ranked countries in this data set:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
#
#Load the educational data from this data set:
#    
#    https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv
#
#Match the data based on the country shortcode. Of the countries for which the end of the 
#fiscal year is available, how many end in June?
#
#Original data sources:
#    
##    http://data.worldbank.org/data-catalog/GDP-ranking-table
#
#http://data.worldbank.org/data-catalog/ed-stats

direccion4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
archivo4 <- "EDSTATS_Country.csv"
download.file(direccion4, archivo4, method="curl")
EDSTATS <- data.table(read.csv("EDSTATS_Country.csv"))

data2 <- merge(GDP, EDSTATS, all = TRUE, by = c("CountryCode"))
FiscalYearEnd <- grepl("fiscal year end", tolower(data2$Special.Notes))
isJune <- grepl("june", tolower(data2$Special.Notes))
table(FiscalYearEnd, isJune)