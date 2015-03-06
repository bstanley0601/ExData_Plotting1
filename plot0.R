###Exploratory Data Analysis 
###Course Project 1
###plot0.R
### This script sets up the environment, loads the necessary libraries, downloads and unzips the data file 
### and executes the plot1, plot2, plot3, and plot4 functions to create the png files. 

Sys.setlocale("LC_TIME", "en_US") 
library(data.table)
library(dplyr)
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
#require(sqldf)
###Download and unzip the file
print("Downloading the dataset...")
fileURL <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile <- "household_power_consumption.zip"
download.file(fileURL, destfile=zipFile, quiet=TRUE, method="auto")
unzipFile <- "household_power_consumption.txt"
unzip(zipFile, overwrite=TRUE)

###Read the file into data.frame
print("Reading the file into a data.frame...")
hpcData <- read.table(unzipFile, sep=";", header=TRUE, na.strings=c("?","","NA","NaN"), stringsAsFactors=FALSE)

###Give me better variable names 
names(hpcData) <- make.names(names(hpcData), allow_=FALSE)

###Subset to the days we need
print("Subsetting to 1-feb-2007 and 2-feb-2007 dates...")
hpcSubset <- filter(hpcData, (Date=="1/2/2007" | Date=="2/2/2007"))

###Remove full dataset as we don't need it any more
rm(hpcData)

###Add column with combined Date/Time as POSIXlt 
hpcSubset$Date.And.Time <- strptime(paste(hpcSubset$Date, hpcSubset$Time), "%d/%m/%Y %H:%M:%S")
hpcSubset$Date.And.Time <- as.POSIXct(hpcSubset$Date.And.Time)


### Call plot1()
print("Plot1....")
plot1(hpcSubset)
### Call plot2()
print("Plot2....")
plot2(hpcSubset)
### 
print("Plot3....")
plot3(hpcSubset)
###
print("Plot4....")
plot4(hpcSubset)
