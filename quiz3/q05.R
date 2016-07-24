# Cut the GDP ranking into 5 separate quantile groups. Make a table versus
# Income Group. How many countries are Low middle income but among the 38 
# nations with highest GDP?

## install.packages("dplyr")
## install.packages("Hmisc")
library(dplyr)
library(Hmisc)
mergedata$RankGroups <- cut2(mergedata$Rank, g=5)
table(mergedata$RankGroups, mergedata$`Income Group`)