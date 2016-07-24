# What is the average GDP ranking for the "High income: OECD" 
# and "High income: nonOECD group"?


tapply(mergedata$Rank, mergedata$`Income Group`, mean)
