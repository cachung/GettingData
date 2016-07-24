loadCSV <- function() {
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
    DT<-fread(fileURL)
}

q1 <- function() {
    system.time({rowMeans(DT)[DT$SEX==1]);rowMeans(DT)[DT$SEX==2]})

}

q2 <- function() {
    system.time(tapply(DT$pwgtp15,DT$SEX,mean))
}

q3 <- function() {
    system.time(DT[,mean(pwgtp15),by=SEX])
}

q4 <-function() {
    system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
}

q5 <- function() {
    a<-system.time(mean(DT[DT$SEX==1,]$pwgtp15))
    b<-system.time(mean(DT[DT$SEX==2,]$pwgtp15))
    a+b
}

q6 <-function() {
    system.time(mean(DT$pwgtp15,by=DT$SEX))
}