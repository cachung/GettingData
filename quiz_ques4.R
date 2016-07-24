loadXML<-function() {
    # Load XML first
    # library(XML)
    fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
    ## download.file(fileURL,dest="q4.xml")
    doc <- xmlTreeParse(fileURL, useInternal=TRUE)
    rootNode <- xmlRoot(doc)
    
    sum(xpathSApply(rootNode, "//zipcode", xmlValue) == "21231")
}