setwd("C:/LeeCK/DataScience/Module4/Week1")
library(sqldf)

## read file
fhInput <-  file("household_power_consumption.txt")
attr(fhInput, "file.format") <- list(sep = ";", header = TRUE) 

## use sqldf to read it in keeping only indicated rows 
fhInput.df <- sqldf("select * from fhInput where Date = '1/2/2007' or Date = '2/2/2007'") 

## read in date/time info in format 'm/d/y h:m:s'
x <- paste(fhInput.df$Date, fhInput.df$Time)
x <- strptime(x, "%e/%m/%Y %H:%M:%S")

# combine date time into data frame
fhInput.df <- cbind( fhInput.df, x )
colnames( fhInput.df)[names(fhInput.df) == "x"] <- "DateTime"
