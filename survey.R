download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile="")
comm<-read.csv("   ")
head(comm)
commval<-comm$VAL
commval<-commval[(!is.na(commval)]
head(commval)
count<-sum(commval==24)
count
