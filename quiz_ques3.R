loadExcel<-function() {
    
    ## Load xlsx first
    ## library(xlsx)
    URLF <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
    download.file(URLF,dest="q3.xlsx")
    dat <- read.xlsx("q3.xlsx", sheetIndex=1, rowIndex=18:23, colIndex=7:15)
    return(sum(dat$Zip*dat$Ext,na.rm=T))
}