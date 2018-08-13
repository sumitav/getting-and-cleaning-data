fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = paste0(getwd(), '/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'), method = "curl")

dat <- xlsx::read.xlsx(file = "getdata%2Fdata%2FDATA.gov_NGAP.xlsx", sheetIndex = 1, rowIndex = 18:23, colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)


4-
Read the XML data on Baltimore restaurants from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml

How many restaurants have zipcode 21231?

setwd("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory")
library(XML)
fileUrl <- "D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory\\Baltimore_Restaurants.xml"
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
zipcodes <- xpathSApply(doc, "//zipcode", xmlValue)
sum(zipcodes == 21231)

5-
The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv

using the fread() command load the data into an R object

DT

Which of the following is the fastest way to calculate the average value of the variable

pwgtp15

broken down by sex using the data.table package?

DT <- data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")

# Answer (fastest):
system.time(DT[,mean(pwgtp15),by=SEX])
